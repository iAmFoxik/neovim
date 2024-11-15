local ensure_packer = function()
	local fn = vim.fn
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
	  return true
else
  return false
	end
end

local packer_bootstrap = ensure_packer()

if packer_bootstrap then
    require('packer').sync()
end
if not packer_bootstrap then
require('plugins')
require('base')
require('keys')
require('configs')
require('newpaper').setup()
end
