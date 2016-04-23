{:user {:dependencies [[clj-stacktrace "0.2.8"]]
        :injections [(let [orig (ns-resolve (doto 'clojure.stacktrace require)
                                            'print-cause-trace)
                           new (ns-resolve (doto 'clj-stacktrace.repl require)
                                           'pst)]
                       (alter-var-root orig (constantly (deref new))))]
                       :plugins [[venantius/ultra "0.4.1"]
                                 [lein-ancient "0.6.8"]]}}
