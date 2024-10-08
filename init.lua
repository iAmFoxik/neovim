-----------
-- Установка Packer
-----------
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-----------------------------------------------------------
-- Импорт модулей lua
-----------------------------------------------------------
require('base')
require('plugins')
require('keys')

if vim.g.vscode then

    vim.cmd [[source $HOME/.config/nvim/vscode/settings.vim]]
else
-- Настройка модулей
	require('configs')

    require('newpaper').setup()
end
