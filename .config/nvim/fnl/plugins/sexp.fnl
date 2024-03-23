(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :tpope/vim-sexp-mappings-for-regular-people
  :dependencies  [:guns/vim-sexp
                  :tpope/vim-repeat
                  :tpope/vim-surround]
  :init (fn
          []
          (set nvim.g.sexp_filetypes "clojure,scheme,lisp,timl,fennel,janet"))}]
