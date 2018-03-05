
(cl:in-package :asdf)

(defsystem "trigger_messages-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MessageServerStarter" :depends-on ("_package_MessageServerStarter"))
    (:file "_package_MessageServerStarter" :depends-on ("_package"))
  ))