local status, masonlsp = pcall(require, 'mason-lspconfig')

if not status then
	return
end

masonlsp.setup({
	ensure_installed = {
		"rust_analyzer",
		"lua_ls"
	},
	automatic_installation = true,
})
