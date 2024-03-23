-- [nfnl] Compiled from fnl/plugins/sexp.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  nvim.g.sexp_filetypes = "clojure,scheme,lisp,timl,fennel,janet"
  return nil
end
return {{"tpope/vim-sexp-mappings-for-regular-people", dependencies = {"guns/vim-sexp", "tpope/vim-repeat", "tpope/vim-surround"}, init = _2_}}
