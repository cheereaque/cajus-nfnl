(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :kdheepak/lazygit.nvim
  :init (fn
          []
          (nvim.set_keymap :n :<leader>lg ":LazyGit<CR>" {:noremap true}))}]
