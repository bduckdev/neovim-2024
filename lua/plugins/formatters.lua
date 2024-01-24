return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.eslint_d,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        vim.api.nvim_create_autocmd({ "BufWritePre" }, { pattern = { "*" }, callback = vim.lsp.buf.format })
	end,
}
