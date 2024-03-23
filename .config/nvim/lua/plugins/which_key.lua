-- [nfnl] Compiled from fnl/plugins/which_key.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local wk = require("which-key")
  return wk.setup({})
end
return {{"folke/which-key.nvim", config = _1_}}
