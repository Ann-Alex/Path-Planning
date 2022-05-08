
(cl:in-package :asdf)

(defsystem "tuw_waypoint_to_spline_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
               :tuw_nav_msgs-msg
)
  :components ((:file "_package")
    (:file "PathToSpline" :depends-on ("_package_PathToSpline"))
    (:file "_package_PathToSpline" :depends-on ("_package"))
  ))