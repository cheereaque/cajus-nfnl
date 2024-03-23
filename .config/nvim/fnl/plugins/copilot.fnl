(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :github/copilot.vim
  :init #(do
           (set nvim.g.copilot_no_tab_map true)
           (set nvim.g.copilot_assume_mapped true)

           (nvim.set_keymap :i :<F1> "copilot#Accept(\"\")" {:expr true :silent true})
           (nvim.set_keymap :i :<F2> "<Cmd>call copilot#Next()<CR>" {:silent true})
           (nvim.set_keymap :i :<F3> "<Cmd>call copilot#Previous()<CR>" {:silent true}))}]
