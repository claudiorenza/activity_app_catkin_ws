
(cl:in-package :asdf)

(defsystem "trigger_messages-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MessageServer" :depends-on ("_package_MessageServer"))
    (:file "_package_MessageServer" :depends-on ("_package"))
  ))