(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :ThePrimeagen/harpoon
  :branch :harpoon2
  :dependencies [:nvim-lua/plenary.nvim]
  :init #(let [harpoon (require :harpoon)
               list #(harpoon:list)]
           (harpoon.setup {})
           
           (nvim.set_keymap :n :<leader>hx ":lua require('harpoon'):list():append()<CR>" {:noremap true})
           (nvim.set_keymap :n :<leader>hj ":lua require('harpoon'):list():next()<CR>" {:noremap true})
           (nvim.set_keymap :n :<leader>hk ":lua require('harpoon'):list():prev()<CR>" {:noremap true}))}]
