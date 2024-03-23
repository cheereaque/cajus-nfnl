-- [nfnl] Compiled from fnl/plugins/cmp_cmdline.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local cmp = require("cmp")
  cmp.setup.cmdline("/", {mapping = cmp.mapping.preset.cmdline(), sources = {name = "buffer"}})
  return cmp.setup.cmdline(":", {mapping = cmp.mapping.preset.cmdline(), sources = cmp.config.sources({name = "path"}, {{name = "cmdline", option = {ignore_cmds = {"Man", "!"}}}})})
end
return {{"hrsh7th/cmp-cmdline", dependencies = {"hrsh7th/cmp-buffer"}, config = _1_}}
