-- [nfnl] Compiled from fnl/plugins/leap.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local leap = require("leap")
  return leap.create_default_mappings()
end
return {{"ggandor/leap.nvim", init = _1_}}
