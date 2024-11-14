-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\msys64\\tmp\\nvim\\packer_hererocks\\2.1.1700008891\\share\\lua\\5.1\\?.lua;C:\\msys64\\tmp\\nvim\\packer_hererocks\\2.1.1700008891\\share\\lua\\5.1\\?\\init.lua;C:\\msys64\\tmp\\nvim\\packer_hererocks\\2.1.1700008891\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\msys64\\tmp\\nvim\\packer_hererocks\\2.1.1700008891\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\msys64\\tmp\\nvim\\packer_hererocks\\2.1.1700008891\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["autoclose.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\autoclose.nvim",
    url = "https://github.com/m4xshen/autoclose.nvim"
  },
  ["bclose.vim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bclose.vim",
    url = "https://github.com/rbgrouleff/bclose.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-ctags"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-ctags",
    url = "https://github.com/delphinus/cmp-ctags"
  },
  ["cmp-neosnippet"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-neosnippet",
    url = "https://github.com/notomo/cmp-neosnippet"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  cmp_luasnip = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["crates.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  fzf = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.files"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mini.files",
    url = "https://github.com/echasnovski/mini.files"
  },
  ["mini.surround"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mini.surround",
    url = "https://github.com/echasnovski/mini.surround"
  },
  ["newpaper.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\newpaper.nvim",
    url = "https://github.com/yorik1984/newpaper.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["overseer.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\roverseer\frequire\0" },
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\overseer.nvim",
    url = "https://github.com/stevearc/overseer.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["rust.vim"] = {
    config = { "\27LJ\2\n2\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\21rustfmt_autosave\6g\bvim\0" },
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["search.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\search.nvim",
    url = "https://github.com/FabianWirth/search.nvim"
  },
  ["telescope-undo.nvim"] = {
    config = { "\27LJ\2\n—\1\0\0\5\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0'\2\5\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\tundo\1\0\0\1\0\1\15saved_only\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-undo.nvim",
    url = "https://github.com/debugloop/telescope-undo.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  undotree = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\undotree",
    url = "https://github.com/jiaoshijie/undotree"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["vim-wintabs"] = {
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-wintabs",
    url = "https://github.com/zefei/vim-wintabs"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\n‘\1\0\0\t\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0009\4\4\0005\6\6\0009\a\5\0B\a\1\2=\a\a\6B\4\2\0A\1\1\1K\0\1\0\16highlighter\1\0\0\22basic_highlighter\22wildmenu_renderer\rrenderer\15set_option\vwilder\frequire\0" },
    loaded = true,
    path = "C:\\Users\\foxik\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope-undo.nvim
time([[Config for telescope-undo.nvim]], true)
try_loadstring("\27LJ\2\n—\1\0\0\5\0\t\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0'\2\5\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\tundo\1\0\0\1\0\1\15saved_only\2\nsetup\14telescope\frequire\0", "config", "telescope-undo.nvim")
time([[Config for telescope-undo.nvim]], false)
-- Config for: rust.vim
time([[Config for rust.vim]], true)
try_loadstring("\27LJ\2\n2\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\21rustfmt_autosave\6g\bvim\0", "config", "rust.vim")
time([[Config for rust.vim]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\n‘\1\0\0\t\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0009\4\4\0005\6\6\0009\a\5\0B\a\1\2=\a\a\6B\4\2\0A\1\1\1K\0\1\0\16highlighter\1\0\0\22basic_highlighter\22wildmenu_renderer\rrenderer\15set_option\vwilder\frequire\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Config for: overseer.nvim
time([[Config for overseer.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\roverseer\frequire\0", "config", "overseer.nvim")
time([[Config for overseer.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
