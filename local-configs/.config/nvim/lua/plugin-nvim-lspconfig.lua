local plugin = {}

for _, v in ipairs({
	{ "<space>e", vim.diagnostic.open_float },
	{ "[d", vim.diagnostic.goto_prev },
	{ "]d", vim.diagnostic.goto_next },
	{ "<space>q", vim.diagnostic.setloclist },
}) do
	vim.keymap.set("n", v[1], v[2], { noremap = true, silent = true })
end

plugin.on_attach = function(_, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	for _, v in ipairs({
		{ "gD", vim.lsp.buf.declaration },
		{ "gd", vim.lsp.buf.definition },
		{ "K", vim.lsp.buf.hover },
		{ "gi", vim.lsp.buf.implementation },
		{ "<C-k>", vim.lsp.buf.signature_help },
		{ "<space>wa", vim.lsp.buf.add_workspace_folder },
		{ "<space>wr", vim.lsp.buf.remove_workspace_folder },
		{
			"<space>wl",
			function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end,
		},
		{ "<space>D", vim.lsp.buf.type_definition },
		{ "<space>rn", vim.lsp.buf.rename },
		{ "<space>ca", vim.lsp.buf.code_action },
		{ "gr", vim.lsp.buf.references },
		{ "<space>f", vim.lsp.buf.formatting },
	}) do
		vim.keymap.set("n", v[1], v[2], { noremap = true, silent = true, buffer = bufnr })
	end
end

require("lspconfig").sumneko_lua.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},

	on_attach = plugin.on_attach,
})

return plugin
