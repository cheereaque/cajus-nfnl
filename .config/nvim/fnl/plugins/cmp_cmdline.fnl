[{1 :hrsh7th/cmp-cmdline
  :dependencies [:hrsh7th/cmp-buffer]
  :config (fn 
            []
            (let [cmp (require :cmp)]
              (cmp.setup.cmdline "/" {:mapping (cmp.mapping.preset.cmdline)
                                      :sources {:name :buffer}})

              (cmp.setup.cmdline ":" {:mapping (cmp.mapping.preset.cmdline)
                                      :sources (cmp.config.sources {:name :path}
                                                                   [{:name :cmdline
                                                                     :option {:ignore_cmds [:Man :!]}}])})))}]
