-- [nfnl] Compiled from fnl/plugins/dadbod.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  nvim.set_keymap("n", "<space>dd", ":DBUIToggle<CR>", {noremap = true})
  local icloud_path = os.getenv("ICLOUD_PATH")
  nvim.g.db_ui_save_location = (icloud_path .. "/share/nvim/db_ui")
  return nil
end
return {{"kristijanhusak/vim-dadbod-ui", dependencies = {"tpope/vim-dadbod", "kristijanhusak/vim-dadbod-completion"}, init = _2_}}
