(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :catppuccin/nvim
  :name :catppuccin
  :priority 1000
  :config #(let [catppuccin (require :catppuccin)]
             (catppuccin.setup {:flavour :frappe})
             (vim.cmd "colorscheme catppuccin"))}]
