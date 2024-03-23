-- [nfnl] Compiled from fnl/config/init.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local core = autoload("nfnl.core")
nvim.set_keymap("n", "<space>", "<nop>", {noremap = true})
nvim.set_keymap("n", "<C-h>", "<C-w>h", {noremap = true})
nvim.set_keymap("n", "<C-j>", "<C-w>j", {noremap = true})
nvim.set_keymap("n", "<C-k>", "<C-w>k", {noremap = true})
nvim.set_keymap("n", "<C-l>", "<C-w>l", {noremap = true})
do
  local options = {expandtab = true, tabstop = 2, shiftwidth = 2, softtabstop = 2, completeopt = "menuone,noselect", ignorecase = true, smartcase = true, clipboard = "unnamedplus", number = true, ruler = true, signcolumn = "number"}
  for option, value in pairs(options) do
    core.assoc(nvim.o, option, value)
  end
end
vim.wo.relativenumber = true
vim.opt.cursorline = true
return {}
