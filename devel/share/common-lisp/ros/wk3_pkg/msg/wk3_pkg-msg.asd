
(cl:in-package :asdf)

(defsystem "wk3_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "signal_msg" :depends-on ("_package_signal_msg"))
    (:file "_package_signal_msg" :depends-on ("_package"))
  ))