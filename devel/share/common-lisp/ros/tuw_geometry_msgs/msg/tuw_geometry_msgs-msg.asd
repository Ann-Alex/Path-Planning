
(cl:in-package :asdf)

(defsystem "tuw_geometry_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LineSegment" :depends-on ("_package_LineSegment"))
    (:file "_package_LineSegment" :depends-on ("_package"))
    (:file "LineSegments" :depends-on ("_package_LineSegments"))
    (:file "_package_LineSegments" :depends-on ("_package"))
    (:file "WeightedPoseWithCovariance" :depends-on ("_package_WeightedPoseWithCovariance"))
    (:file "_package_WeightedPoseWithCovariance" :depends-on ("_package"))
    (:file "WeightedPoseWithCovarianceArray" :depends-on ("_package_WeightedPoseWithCovarianceArray"))
    (:file "_package_WeightedPoseWithCovarianceArray" :depends-on ("_package"))
  ))