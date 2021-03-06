
(cl:in-package :asdf)

(defsystem "tuw_multi_robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Graph" :depends-on ("_package_Graph"))
    (:file "_package_Graph" :depends-on ("_package"))
    (:file "Order" :depends-on ("_package_Order"))
    (:file "_package_Order" :depends-on ("_package"))
    (:file "OrderArray" :depends-on ("_package_OrderArray"))
    (:file "_package_OrderArray" :depends-on ("_package"))
    (:file "OrderPosition" :depends-on ("_package_OrderPosition"))
    (:file "_package_OrderPosition" :depends-on ("_package"))
    (:file "Pickup" :depends-on ("_package_Pickup"))
    (:file "_package_Pickup" :depends-on ("_package"))
    (:file "RobotGoals" :depends-on ("_package_RobotGoals"))
    (:file "_package_RobotGoals" :depends-on ("_package"))
    (:file "RobotGoalsArray" :depends-on ("_package_RobotGoalsArray"))
    (:file "_package_RobotGoalsArray" :depends-on ("_package"))
    (:file "RobotInfo" :depends-on ("_package_RobotInfo"))
    (:file "_package_RobotInfo" :depends-on ("_package"))
    (:file "Route" :depends-on ("_package_Route"))
    (:file "_package_Route" :depends-on ("_package"))
    (:file "RoutePrecondition" :depends-on ("_package_RoutePrecondition"))
    (:file "_package_RoutePrecondition" :depends-on ("_package"))
    (:file "RouteProgress" :depends-on ("_package_RouteProgress"))
    (:file "_package_RouteProgress" :depends-on ("_package"))
    (:file "RouteSegment" :depends-on ("_package_RouteSegment"))
    (:file "_package_RouteSegment" :depends-on ("_package"))
    (:file "RouterStatus" :depends-on ("_package_RouterStatus"))
    (:file "_package_RouterStatus" :depends-on ("_package"))
    (:file "Station" :depends-on ("_package_Station"))
    (:file "_package_Station" :depends-on ("_package"))
    (:file "StationArray" :depends-on ("_package_StationArray"))
    (:file "_package_StationArray" :depends-on ("_package"))
    (:file "Vertex" :depends-on ("_package_Vertex"))
    (:file "_package_Vertex" :depends-on ("_package"))
  ))