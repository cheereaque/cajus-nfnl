-- [nfnl] Compiled from fnl/plugins/gruvbox.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local gruvbox = require("gruvbox")
  gruvbox.setup({})
  return vim.cmd("colorscheme gruvbox")
end
return {{"ellisonleao/gruvbox.nvim", priority = 1000, config = _1_}}
