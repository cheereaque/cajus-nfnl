(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :nvim-telescope/telescope.nvim
  :dependencies [:nvim-telescope/telescope-ui-select.nvim
                 :nvim-lua/popup.nvim
                 :nvim-lua/plenary.nvim]
  :init #(let [icloud-path (os.getenv "ICLOUD_PATH")
                http-snippets-folder (.. icloud-path "/share/nvim/rest_nvim/dev")
                find-http-snippet (.. ":lua require('telescope.builtin').find_files({ cwd = \"" http-snippets-folder "\"})<CR>")]
            (nvim.set_keymap :n :<leader>ff ":lua require('telescope.builtin').find_files()<CR>" {:noremap true})
            (nvim.set_keymap :n :<leader>fg ":lua require('telescope.builtin').live_grep()<CR>" {:noremap true})
            (nvim.set_keymap :n :<leader>fb ":lua require('telescope.builtin').buffers()<CR>" {:noremap true})
            (nvim.set_keymap :n :<leader>fh ":lua require('telescope.builtin').help_tags()<CR>" {:noremap true})
            (nvim.set_keymap :n :<leader>fa ":lua require('telescope.builtin').lsp_document_symbols({ignore_symbols = variables})<CR>" {:noremap true})
            (nvim.set_keymap :n :<leader>fA ":lua require('telescope.builtin').lsp_workspace_symbols()<CR>" {:noremap true})
            (nvim.set_keymap :n :<leader>rf find-http-snippet {:noremap true}))
  :config (fn []
            (let [telescope (require :telescope)
                  themes (require :telescope.themes)]
              (telescope.setup {:defaults {:file_ignore_patterns ["node_modules"]
                                           :vimgrep_arguments ["rg"
                                                               "--color=never"
                                                               "--no-heading"
                                                               "--with-filename"
                                                               "--line-number"
                                                               "--column"
                                                               "--smart-case"
                                                               "--iglob"
                                                               "!.git"
                                                               "--hidden"]}
                                :extensions {:ui-select {1 (themes.get_dropdown {})}}
                                :pickers {:find_files {:find_command ["rg"
                                                                      "--files"
                                                                      "--iglob"
                                                                      "!.git"
                                                                      "--hidden"]}}})
              (telescope.load_extension "ui-select")))}]
