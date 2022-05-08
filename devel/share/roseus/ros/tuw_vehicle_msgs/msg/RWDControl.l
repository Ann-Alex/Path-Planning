;; Auto-generated. Do not edit!


(when (boundp 'tuw_vehicle_msgs::RWDControl)
  (if (not (find-package "TUW_VEHICLE_MSGS"))
    (make-package "TUW_VEHICLE_MSGS"))
  (shadow 'RWDControl (find-package "TUW_VEHICLE_MSGS")))
(unless (find-package "TUW_VEHICLE_MSGS::RWDCONTROL")
  (make-package "TUW_VEHICLE_MSGS::RWDCONTROL"))

(in-package "ROS")
;;//! \htmlinclude RWDControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_vehicle_msgs::RWDControl
  :super ros::object
  :slots (_header _left_torque _right_torque _steering_angle _steering_active _brake_pressure ))

(defmethod tuw_vehicle_msgs::RWDControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_torque __left_torque) 0.0)
    ((:right_torque __right_torque) 0.0)
    ((:steering_angle __steering_angle) 0.0)
    ((:steering_active __steering_active) nil)
    ((:brake_pressure __brake_pressure) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_torque (float __left_torque))
   (setq _right_torque (float __right_torque))
   (setq _steering_angle (float __steering_angle))
   (setq _steering_active __steering_active)
   (setq _brake_pressure (float __brake_pressure))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_torque
   (&optional __left_torque)
   (if __left_torque (setq _left_torque __left_torque)) _left_torque)
  (:right_torque
   (&optional __right_torque)
   (if __right_torque (setq _right_torque __right_torque)) _right_torque)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:steering_active
   (&optional (__steering_active :null))
   (if (not (eq __steering_active :null)) (setq _steering_active __steering_active)) _steering_active)
  (:brake_pressure
   (&optional __brake_pressure)
   (if __brake_pressure (setq _brake_pressure __brake_pressure)) _brake_pressure)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _left_torque
    8
    ;; float64 _right_torque
    8
    ;; float64 _steering_angle
    8
    ;; bool _steering_active
    1
    ;; float64 _brake_pressure
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _left_torque
       (sys::poke _left_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_torque
       (sys::poke _right_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _steering_active
       (if _steering_active (write-byte -1 s) (write-byte 0 s))
     ;; float64 _brake_pressure
       (sys::poke _brake_pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _left_torque
     (setq _left_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_torque
     (setq _right_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _steering_active
     (setq _steering_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _brake_pressure
     (setq _brake_pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tuw_vehicle_msgs::RWDControl :md5sum-) "6ab408c0408c0e176d10871e0558e308")
(setf (get tuw_vehicle_msgs::RWDControl :datatype-) "tuw_vehicle_msgs/RWDControl")
(setf (get tuw_vehicle_msgs::RWDControl :definition-)
      "Header header
# requested torque on the left rear wheel in Nm
float64 left_torque
# requested torque on the right rear wheel in Nm
float64 right_torque
# requested steering angle in degrees
float64 steering_angle
# whether the vehicle should steer, or remain in the current steering position without applying force
bool steering_active
# requested brake pressure for the system in bar measured at the front brake circuit
float64 brake_pressure

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



(provide :tuw_vehicle_msgs/RWDControl "6ab408c0408c0e176d10871e0558e308")


