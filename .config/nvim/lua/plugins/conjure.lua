-- [nfnl] Compiled from fnl/plugins/conjure.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  nvim.g["conjure#mapping#doc_word"] = "K"
  nvim.g["conjure#client#clojure#nrepl#eval#auto_require"] = false
  nvim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false
  nvim.g["conjure#relative_file_root"] = nvim.fn.getcwd()
  nvim.g["conjure#path_subs"] = {["/root/.m2/"] = (nvim.fn.getenv("HOME") .. "/.m2/")}
  nvim.g["conjure#client#clojure#nrepl#refresh#before"] = "user.my/stop"
  nvim.g["conjure#client#clojure#nrepl#refresh#after"] = "user.my/go"
  vim.g.clojure_enable_formatting = true
  local function _3_()
    vim.g.clojure_enable_formatting = true
    return nil
  end
  nvim.create_user_command("ClojureEnableFormatting", _3_, {bang = true})
  local function _4_()
    vim.g.clojure_enable_formatting = false
    return nil
  end
  nvim.create_user_command("ClojureDisableFormatting", _4_, {bang = true})
  local function _5_()
    nvim.g["conjure#client#clojure#nrepl#refresh#before"] = "user.my/stop"
    nvim.g["conjure#client#clojure#nrepl#refresh#after"] = "user.my/go"
    return nil
  end
  nvim.create_user_command("ClojureAutoReloadUser", _5_, {bang = true})
  local function _6_()
    nvim.g["conjure#client#clojure#nrepl#refresh#before"] = "dev/stop"
    nvim.g["conjure#client#clojure#nrepl#refresh#after"] = "dev/go"
    return nil
  end
  nvim.create_user_command("ClojureAutoReloadDev", _6_, {bang = true})
  local group = vim.api.nvim_create_augroup("clojure", {clear = true})
  local function _7_()
    return vim.cmd(":ConjureCljDebugInput continue")
  end
  vim.api.nvim_create_autocmd({"BufWritePre"}, {pattern = "*.clj", group = group, callback = _7_})
  local function _8_()
    if (vim.g.clojure_enable_formatting == true) then
      return vim.cmd("silent! !cljstyle fix <afile>")
    else
      return nil
    end
  end
  vim.api.nvim_create_autocmd({"BufWritePost"}, {pattern = "*.clj,*.edn", group = group, callback = _8_})
  local function _10_()
    vim.cmd(":ConjureCljRefreshChanged")
    return vim.cmd(":ConjureEvalFile")
  end
  return vim.api.nvim_create_autocmd({"BufWritePost"}, {pattern = "*.clj", group = group, callback = _10_})
end
return {{"Olical/conjure", branch = "master", init = _2_}}
