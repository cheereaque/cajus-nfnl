-- [nfnl] Compiled from fnl/plugins/copilot.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  nvim.g.copilot_no_tab_map = true
  nvim.g.copilot_assume_mapped = true
  nvim.set_keymap("i", "<F1>", "copilot#Accept(\"\")", {expr = true, silent = true})
  nvim.set_keymap("i", "<F2>", "<Cmd>call copilot#Next()<CR>", {silent = true})
  return nvim.set_keymap("i", "<F3>", "<Cmd>call copilot#Previous()<CR>", {silent = true})
end
return {{"github/copilot.vim", init = _2_}}
