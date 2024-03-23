-- [nfnl] Compiled from fnl/plugins/indent_blankline.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local highlight_setup
  local function _2_()
    vim.api.nvim_set_hl(0, "RainbowRed", {fg = "#E06C75"})
    vim.api.nvim_set_hl(0, "RainbowYellow", {fg = "#E5C07B"})
    vim.api.nvim_set_hl(0, "RainbowBlue", {fg = "#61AFEF"})
    vim.api.nvim_set_hl(0, "RainbowOrange", {fg = "#D19A66"})
    vim.api.nvim_set_hl(0, "RainbowGreen", {fg = "#98C379"})
    vim.api.nvim_set_hl(0, "RainbowViolet", {fg = "#C678DD"})
    return vim.api.nvim_set_hl(0, "RainbowCyan", {fg = "#56B6C2"})
  end
  highlight_setup = _2_
  local highlight = {"RainbowRed", "RainbowYellow", "RainbowBlue", "RainbowOrange", "RainbowGreen", "RainbowViolet", "RainbowCyan"}
  local ibl = require("ibl")
  local hooks = require("ibl.hooks")
  hooks.register(hooks.type.HIGHLIGHT_SETUP, highlight_setup)
  return ibl.setup({indent = {highlight = highlight}})
end
return {{"lukas-reineke/indent-blankline.nvim", main = "ibl", config = _1_}}
