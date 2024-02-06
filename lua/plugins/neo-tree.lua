return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            hijack_netrw_behavior = "open_current",
            window = {
                position = "current",
                mappings = {},
            },
            filesystem = {
                filtered_items = {
                    visible = true, -- when true, they will just be displayed differently than normal items
                    hide_dotfiles = true,
                    hide_gitignored = true,
                },
            },
            vim.keymap.set("n", "<leader>pv", vim.cmd.Neotree),
        })
    end,
}
