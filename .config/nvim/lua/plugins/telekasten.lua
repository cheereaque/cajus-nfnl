-- [nfnl] Compiled from fnl/plugins/telekasten.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  local nvim0 = require("nvim")
  nvim0.set_keymap("n", "<leader>z", ":Telekasten panel<CR>", {noremap = true})
  nvim0.set_keymap("n", "<leader>zn", ":Telekasten new_note<CR>", {noremap = true})
  nvim0.set_keymap("n", "<leader>zf", ":Telekasten find_notes<CR>", {noremap = true})
  nvim0.set_keymap("n", "<leader>zg", ":Telekasten search_notes<CR>", {noremap = true})
  nvim0.set_keymap("n", "<leader>zt", ":Telekasten show_tags<CR>", {noremap = true})
  local group = vim.api.nvim_create_augroup("markdown", {clear = true})
  local function _3_()
    return vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
  end
  return vim.api.nvim_create_autocmd({"InsertEnter"}, {pattern = "*.md", group = group, callback = _3_})
end
local function _4_()
  local telekasten = require("telekasten")
  local obsidian_path = os.getenv("OBSIDIAN_PATH")
  local vault = "cheereaque"
  return telekasten.setup({home = (obsidian_path .. "/" .. vault .. "/00-zettlekasten")})
end
return {{"renerocksai/telekasten.nvim", dependencies = {"nvim-telescope/telescope.nvim"}, init = _2_, config = _4_}}
