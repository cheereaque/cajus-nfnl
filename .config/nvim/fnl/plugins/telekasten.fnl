(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :renerocksai/telekasten.nvim
  :dependencies [:nvim-telescope/telescope.nvim]
  :init #(let [nvim (require :nvim)]
           (nvim.set_keymap :n :<leader>z ":Telekasten panel<CR>" {:noremap true})
           (nvim.set_keymap :n :<leader>zn ":Telekasten new_note<CR>" {:noremap true})
           (nvim.set_keymap :n :<leader>zf ":Telekasten find_notes<CR>" {:noremap true})
           (nvim.set_keymap :n :<leader>zg ":Telekasten search_notes<CR>" {:noremap true})
           (nvim.set_keymap :n :<leader>zt ":Telekasten show_tags<CR>" {:noremap true})
           (let [group (vim.api.nvim_create_augroup
                         :markdown
                         {:clear true})]
             (vim.api.nvim_create_autocmd
               [:InsertEnter]
               {:pattern "*.md"
                :group group
                :callback #(vim.keymap.set :i "[[" "<cmd>Telekasten insert_link<CR>")}))) 
           
  :config #(let [telekasten (require :telekasten)
                 obsidian_path (os.getenv "OBSIDIAN_PATH")
                 vault "cheereaque"]
             (telekasten.setup {:home (.. obsidian_path "/" vault "/00-zettlekasten")}))}]
