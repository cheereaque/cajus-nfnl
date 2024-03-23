-- [nfnl] Compiled from fnl/plugins/noice.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local noice = require("noice")
  return noice.setup({views = {cmdline_popup = {border = {style = "none", padding = {2, 3}}, filter_options = {}, win_options = {winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder"}}}})
end
return {{"folke/noice.nvim", event = "VeryLazy", opts = {}, dependencies = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"}, config = _1_}}
