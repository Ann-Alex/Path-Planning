
(cl:in-package :asdf)

(defsystem "tuw_airskin_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AirskinColors" :depends-on ("_package_AirskinColors"))
    (:file "_package_AirskinColors" :depends-on ("_package"))
    (:file "AirskinInfo" :depends-on ("_package_AirskinInfo"))
    (:file "_package_AirskinInfo" :depends-on ("_package"))
    (:file "AirskinPressures" :depends-on ("_package_AirskinPressures"))
    (:file "_package_AirskinPressures" :depends-on ("_package"))
  ))