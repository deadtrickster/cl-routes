;; routes.asd

(defsystem :routes
  :version "0.2"
  :depends-on (:puri :iterate :split-sequence)
  :components ((:module "unify"
                        :serial t
                        :components ((:file "package")
                                     (:file "bindings" :depends-on ("package"))
                                     (:file "unify" :depends-on ("bindings"))
                                     (:file "merge" :depends-on ("unify"))
                                     (:file "apply" :depends-on ("bindings"))))
               (:module "routes"
                        :serial t
                        :components ((:file "package")
                                     (:file "route" :depends-on ("package"))
                                     (:file "mapper" :depends-on ("route")))
                        :depends-on ("unify"))))
