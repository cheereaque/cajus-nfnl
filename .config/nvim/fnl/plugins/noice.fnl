[{1 :folke/noice.nvim
  :event :VeryLazy
  :opts {}
  :dependencies [:MunifTanjim/nui.nvim
                 :rcarriga/nvim-notify]

  :config (fn
            []
            (let [noice (require :noice)]
              (noice.setup {:views {:cmdline_popup {:border {:style :none
                                                             :padding [2 3]}
                                                    :filter_options {}
                                                    :win_options {:winhighlight "NormalFloat:NormalFloat,FloatBorder:FloatBorder"}}}})))}]                
                                    
