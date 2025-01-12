return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate', -- Equivalent to `run = ':TSUpdate'` in Packer
        config = function()
            require('nvim-treesitter.configs').setup({
                -- A list of parser names, or "all"
                ensure_installed = { "go", "kotlin", "swift", "c", "lua", "vim", "vimdoc", "query", "ruby" },

                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install missing parsers when entering buffer
                auto_install = true,

                -- List of parsers to ignore installing (or "all")
                ignore_install = { "javascript" },

                -- Highlight module configuration
                highlight = {
                    enable = true, -- Enable highlighting
                    disable = function(lang, buf)
                        local max_filesize = 100 * 1024 -- 100 KB
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,
                    additional_vim_regex_highlighting = false, -- Disable `:h syntax` and treesitter at the same time
                },
            })
        end,
    },
}