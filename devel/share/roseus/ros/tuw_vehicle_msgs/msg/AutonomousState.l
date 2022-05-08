;; Auto-generated. Do not edit!


(when (boundp 'tuw_vehicle_msgs::AutonomousState)
  (if (not (find-package "TUW_VEHICLE_MSGS"))
    (make-package "TUW_VEHICLE_MSGS"))
  (shadow 'AutonomousState (find-package "TUW_VEHICLE_MSGS")))
(unless (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE")
  (make-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))

(in-package "ROS")
;;//! \htmlinclude AutonomousState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MISSION_NONE*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*MISSION_NONE* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*MISSION_NONE* 1)
(intern "*MISSION_BRAKE_TEST*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*MISSION_BRAKE_TEST* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*MISSION_BRAKE_TEST* 2)
(intern "*MISSION_ACCELERATION*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*MISSION_ACCELERATION* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*MISSION_ACCELERATION* 3)
(intern "*MISSION_SKIDPAD*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*MISSION_SKIDPAD* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*MISSION_SKIDPAD* 4)
(intern "*MISSION_TRACKDRIVE*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*MISSION_TRACKDRIVE* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*MISSION_TRACKDRIVE* 5)
(intern "*MISSION_TEST*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*MISSION_TEST* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*MISSION_TEST* 6)
(intern "*MISSION_JACKED_UP_STEERING*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*MISSION_JACKED_UP_STEERING* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*MISSION_JACKED_UP_STEERING* 100)
(intern "*STATE_OFF*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*STATE_OFF* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*STATE_OFF* 1)
(intern "*STATE_READY*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*STATE_READY* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*STATE_READY* 2)
(intern "*STATE_ACTIVE*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*STATE_ACTIVE* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*STATE_ACTIVE* 3)
(intern "*STATE_EBS*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*STATE_EBS* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*STATE_EBS* 4)
(intern "*STATE_FINISHED*" (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(shadow '*STATE_FINISHED* (find-package "TUW_VEHICLE_MSGS::AUTONOMOUSSTATE"))
(defconstant tuw_vehicle_msgs::AutonomousState::*STATE_FINISHED* 5)

(defun tuw_vehicle_msgs::AutonomousState-to-symbol (const)
  (cond
        ((= const 1) 'tuw_vehicle_msgs::AutonomousState::*MISSION_NONE*)
        ((= const 2) 'tuw_vehicle_msgs::AutonomousState::*MISSION_BRAKE_TEST*)
        ((= const 3) 'tuw_vehicle_msgs::AutonomousState::*MISSION_ACCELERATION*)
        ((= const 4) 'tuw_vehicle_msgs::AutonomousState::*MISSION_SKIDPAD*)
        ((= const 5) 'tuw_vehicle_msgs::AutonomousState::*MISSION_TRACKDRIVE*)
        ((= const 6) 'tuw_vehicle_msgs::AutonomousState::*MISSION_TEST*)
        ((= const 100) 'tuw_vehicle_msgs::AutonomousState::*MISSION_JACKED_UP_STEERING*)
        ((= const 1) 'tuw_vehicle_msgs::AutonomousState::*STATE_OFF*)
        ((= const 2) 'tuw_vehicle_msgs::AutonomousState::*STATE_READY*)
        ((= const 3) 'tuw_vehicle_msgs::AutonomousState::*STATE_ACTIVE*)
        ((= const 4) 'tuw_vehicle_msgs::AutonomousState::*STATE_EBS*)
        ((= const 5) 'tuw_vehicle_msgs::AutonomousState::*STATE_FINISHED*)
        (t nil)))

(defclass tuw_vehicle_msgs::AutonomousState
  :super ros::object
  :slots (_header _state _mission _failed_systems ))

(defmethod tuw_vehicle_msgs::AutonomousState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    ((:mission __mission) 0)
    ((:failed_systems __failed_systems) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   (setq _mission (round __mission))
   (setq _failed_systems __failed_systems)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:mission
   (&optional __mission)
   (if __mission (setq _mission __mission)) _mission)
  (:failed_systems
   (&optional __failed_systems)
   (if __failed_systems (setq _failed_systems __failed_systems)) _failed_systems)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
    1
    ;; uint8 _mission
    1
    ;; uint8[] _failed_systems
    (* 1    (length _failed_systems)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _state
       (write-byte _state s)
     ;; uint8 _mission
       (write-byte _mission s)
     ;; uint8[] _failed_systems
     (write-long (length _failed_systems) s)
     (princ _failed_systems s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mission
     (setq _mission (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _failed_systems
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _failed_systems (make-array n :element-type :char))
     (replace _failed_systems buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get tuw_vehicle_msgs::AutonomousState :md5sum-) "d70f585dba7442399f4beebf01ac24b7")
(setf (get tuw_vehicle_msgs::AutonomousState :datatype-) "tuw_vehicle_msgs/AutonomousState")
(setf (get tuw_vehicle_msgs::AutonomousState :definition-)
      "Header header

uint8 MISSION_NONE=1
uint8 MISSION_BRAKE_TEST=2
uint8 MISSION_ACCELERATION=3
uint8 MISSION_SKIDPAD=4
uint8 MISSION_TRACKDRIVE=5
uint8 MISSION_TEST=6

# mission to test correct heading of the vehicle while jacked up
# the front wheels should align between the next cones seen by the vehicle
uint8 MISSION_JACKED_UP_STEERING=100

uint8 STATE_OFF=1
uint8 STATE_READY=2
uint8 STATE_ACTIVE=3
uint8 STATE_EBS=4
uint8 STATE_FINISHED=5

uint8 state
uint8 mission
uint8[] failed_systems

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :tuw_vehicle_msgs/AutonomousState "d70f585dba7442399f4beebf01ac24b7")


