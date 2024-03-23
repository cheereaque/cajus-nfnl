(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :kristijanhusak/vim-dadbod-ui
  :dependencies [:tpope/vim-dadbod
                 :kristijanhusak/vim-dadbod-completion]
  :init (fn 
         []
         (nvim.set_keymap :n :<space>dd ":DBUIToggle<CR>" {:noremap true})

         (let [icloud_path (os.getenv "ICLOUD_PATH")]
           (set nvim.g.db_ui_save_location (.. icloud_path "/share/nvim/db_ui"))))}]
