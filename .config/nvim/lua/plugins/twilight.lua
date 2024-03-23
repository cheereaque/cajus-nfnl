-- [nfnl] Compiled from fnl/plugins/twilight.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  return vim.cmd("lua require('twilight').toggle()")
end
return {{"folke/twilight.nvim", init = _1_}}
