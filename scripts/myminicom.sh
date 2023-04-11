#!/usr/bin/bash
com() {
	local ports_USB ports_ACM ports datename dev devs dev_count
	ports_USB=$(ls /dev/tty.usbmodem* 2>null |  xargs -I {} basename {})
	ports_ACM=$(ls /dev/tty.usbmodem* 2>null |  xargs -I {} basename {})
	ports="$ports_USB $ports_ACM"

	#check lock
	devs=""
	dev_count=0
	for dev in ${ports};
	do
		! ls /run/lock/*"${dev}"* &> /dev/null && { devs+="${dev} ";((dev_count++)); }
	done;
	[ -z "$devs" ] && echo "No Unlock Devices" && return 0;

	datename=$(date +%Y%m%d-%H%M%S)
	if [ $dev_count -eq 1 ]; then
		dev=$devs
	else
		#select dev to open
		echo "Please select one device: (Ctrl+C to abort)"
		select dev in $devs;do
			if [ "$dev" ]; then
			    echo "You select the '$dev'"
			    break
			else
			    echo "Invaild selection"
		    fi
		done
	fi

	out="/tmp/$(basename ${dev}).$datename.log"
	# keep_dir="${HOME}/minicom_keep"

	minicom -c on -D "/dev/$dev" -C "${out}" "$@"

	# [ -f "${out}" ] && {
	# 	echo log : "${out}"
	# 	read -p "Keep it? [y|N]: " keep;

	# 	[ "${keep}" = 'Y' -o "${keep}" = 'y' ] && {
	# 		read -p "Enter file name > " keep_file_name

	# 		[ x"$keep_file_name" = x"" ] && keep_file_name=$(basename "${out}")

	# 		mkdir -p "$keep_dir"
	# 		cp "${out}" "${keep_dir}/$keep_file_name"
	# 		echo "saved in $keep_dir/$keep_file_name"
	# 	}
	# }
	# read -p "Vim it? [y|N]: " edit_vim;

	# [ "${edit_vim}" = 'Y' -o "${edit_vim}" = 'y' ] && vim "${out}"
}