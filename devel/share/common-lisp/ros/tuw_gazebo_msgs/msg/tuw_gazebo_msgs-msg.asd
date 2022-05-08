
(cl:in-package :asdf)

(defsystem "tuw_gazebo_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "JointCmd" :depends-on ("_package_JointCmd"))
    (:file "_package_JointCmd" :depends-on ("_package"))
    (:file "JointState" :depends-on ("_package_JointState"))
    (:file "_package_JointState" :depends-on ("_package"))
    (:file "JointsCmdI4ws" :depends-on ("_package_JointsCmdI4ws"))
    (:file "_package_JointsCmdI4ws" :depends-on ("_package"))
    (:file "JointsMeasureI4ws" :depends-on ("_package_JointsMeasureI4ws"))
    (:file "_package_JointsMeasureI4ws" :depends-on ("_package"))
    (:file "Measure" :depends-on ("_package_Measure"))
    (:file "_package_Measure" :depends-on ("_package"))
  ))