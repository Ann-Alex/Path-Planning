
(cl:in-package :asdf)

(defsystem "tuw_object_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
    (:file "ObjectDetection" :depends-on ("_package_ObjectDetection"))
    (:file "_package_ObjectDetection" :depends-on ("_package"))
    (:file "ObjectStamped" :depends-on ("_package_ObjectStamped"))
    (:file "_package_ObjectStamped" :depends-on ("_package"))
    (:file "ObjectWithCovariance" :depends-on ("_package_ObjectWithCovariance"))
    (:file "_package_ObjectWithCovariance" :depends-on ("_package"))
    (:file "ObjectWithCovarianceArray" :depends-on ("_package_ObjectWithCovarianceArray"))
    (:file "_package_ObjectWithCovarianceArray" :depends-on ("_package"))
    (:file "ObjectWithCovarianceArrayArray" :depends-on ("_package_ObjectWithCovarianceArrayArray"))
    (:file "_package_ObjectWithCovarianceArrayArray" :depends-on ("_package"))
    (:file "ObjectWithCovarianceStamped" :depends-on ("_package_ObjectWithCovarianceStamped"))
    (:file "_package_ObjectWithCovarianceStamped" :depends-on ("_package"))
  ))