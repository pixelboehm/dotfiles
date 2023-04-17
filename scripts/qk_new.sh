#!/bin/bash

read -p "New Movie: " name

episodes_folder="/Volumes/documents/Quatschkino/Raw_Data"

latest_episode_number=$(ls $episodes_folder | grep -Eo '^[0-9]+'| sort -n | tail -1)

if [[ -z "$latest_episode_number" ]]; then
  latest_episode_number=0
fi

((new_episode_number=${latest_episode_number}+1))

new_episode="${new_episode_number}_${name}"

absolute_episode_path=${episodes_folder}/${new_episode}

mkdir "$absolute_episode_path"

echo "created episode folder: $new_episode"

echo "... updating symlink"

symlink_location="$HOME/Desktop/qk_latest"

## alternative to absolute_episode_path symlinking
# ln -sf $(ls -td ${episodes_folder}/*| head -1) $symlink_location

ln -sf $absolute_episode_path $symlink_location

echo "Done"

exit 0
