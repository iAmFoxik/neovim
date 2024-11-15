local status, masonlsp = pcall(require, 'mason-lspconfig')

if not status then
  return
end

masonlsp.setup({
  ensure_installed = {
    "rust_analyzer",
    "lua_ls",
    "texlab",
    "zls"
  },
  automatic_installation = true,
})
masonlsp.setup_handlers {
  ['rust_analyzer'] = function() end,
}
