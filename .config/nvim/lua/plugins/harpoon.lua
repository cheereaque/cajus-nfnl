-- [nfnl] Compiled from fnl/plugins/harpoon.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  local harpoon = require("harpoon")
  local list
  local function _3_()
    return harpoon:list()
  end
  list = _3_
  harpoon.setup({})
  nvim.set_keymap("n", "<leader>hx", ":lua require('harpoon'):list():append()<CR>", {noremap = true})
  nvim.set_keymap("n", "<leader>hj", ":lua require('harpoon'):list():next()<CR>", {noremap = true})
  return nvim.set_keymap("n", "<leader>hk", ":lua require('harpoon'):list():prev()<CR>", {noremap = true})
end
return {{"ThePrimeagen/harpoon", branch = "harpoon2", dependencies = {"nvim-lua/plenary.nvim"}, init = _2_}}
