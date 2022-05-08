
(cl:in-package :asdf)

(defsystem "tuw_vehicle_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AutonomousState" :depends-on ("_package_AutonomousState"))
    (:file "_package_AutonomousState" :depends-on ("_package"))
    (:file "BatteryState" :depends-on ("_package_BatteryState"))
    (:file "_package_BatteryState" :depends-on ("_package"))
    (:file "ChassisState" :depends-on ("_package_ChassisState"))
    (:file "_package_ChassisState" :depends-on ("_package"))
    (:file "CmdMpcVecVphi" :depends-on ("_package_CmdMpcVecVphi"))
    (:file "_package_CmdMpcVecVphi" :depends-on ("_package"))
    (:file "RWDControl" :depends-on ("_package_RWDControl"))
    (:file "_package_RWDControl" :depends-on ("_package"))
    (:file "RWDKinCmd" :depends-on ("_package_RWDKinCmd"))
    (:file "_package_RWDKinCmd" :depends-on ("_package"))
    (:file "RWDMotion" :depends-on ("_package_RWDMotion"))
    (:file "_package_RWDMotion" :depends-on ("_package"))
    (:file "Track" :depends-on ("_package_Track"))
    (:file "_package_Track" :depends-on ("_package"))
    (:file "TrackMarking" :depends-on ("_package_TrackMarking"))
    (:file "_package_TrackMarking" :depends-on ("_package"))
    (:file "Wheelspeeds" :depends-on ("_package_Wheelspeeds"))
    (:file "_package_Wheelspeeds" :depends-on ("_package"))
  ))