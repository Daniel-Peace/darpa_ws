
(cl:in-package :asdf)

(defsystem "messages-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Prediction" :depends-on ("_package_Prediction"))
    (:file "_package_Prediction" :depends-on ("_package"))
    (:file "Prediction_element" :depends-on ("_package_Prediction_element"))
    (:file "_package_Prediction_element" :depends-on ("_package"))
  ))