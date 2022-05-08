
(cl:in-package :asdf)

(defsystem "tuw_multi_robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :tuw_multi_robot_msgs-msg
)
  :components ((:file "_package")
    (:file "StationManagerControlProtocol" :depends-on ("_package_StationManagerControlProtocol"))
    (:file "_package_StationManagerControlProtocol" :depends-on ("_package"))
    (:file "StationManagerStationProtocol" :depends-on ("_package_StationManagerStationProtocol"))
    (:file "_package_StationManagerStationProtocol" :depends-on ("_package"))
  ))