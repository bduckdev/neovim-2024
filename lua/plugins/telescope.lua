return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies={'nvim-lua/plenary.nvim'},
        config = function ()
            local builtin = require('telescope.builtin')
            require('telescope').setup({
                defaults = {
                    file_ignore_patterns = { 'node_modules/', },
                }
            })
            vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }

                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    },
}
