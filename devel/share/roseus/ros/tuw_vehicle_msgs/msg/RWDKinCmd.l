;; Auto-generated. Do not edit!


(when (boundp 'tuw_vehicle_msgs::RWDKinCmd)
  (if (not (find-package "TUW_VEHICLE_MSGS"))
    (make-package "TUW_VEHICLE_MSGS"))
  (shadow 'RWDKinCmd (find-package "TUW_VEHICLE_MSGS")))
(unless (find-package "TUW_VEHICLE_MSGS::RWDKINCMD")
  (make-package "TUW_VEHICLE_MSGS::RWDKINCMD"))

(in-package "ROS")
;;//! \htmlinclude RWDKinCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_vehicle_msgs::RWDKinCmd
  :super ros::object
  :slots (_header _vel _front_center_wheel_angle _brake_pressure ))

(defmethod tuw_vehicle_msgs::RWDKinCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vel __vel) 0.0)
    ((:front_center_wheel_angle __front_center_wheel_angle) 0.0)
    ((:brake_pressure __brake_pressure) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vel (float __vel))
   (setq _front_center_wheel_angle (float __front_center_wheel_angle))
   (setq _brake_pressure (float __brake_pressure))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:front_center_wheel_angle
   (&optional __front_center_wheel_angle)
   (if __front_center_wheel_angle (setq _front_center_wheel_angle __front_center_wheel_angle)) _front_center_wheel_angle)
  (:brake_pressure
   (&optional __brake_pressure)
   (if __brake_pressure (setq _brake_pressure __brake_pressure)) _brake_pressure)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _vel
    8
    ;; float64 _front_center_wheel_angle
    8
    ;; float64 _brake_pressure
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_center_wheel_angle
       (sys::poke _front_center_wheel_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake_pressure
       (sys::poke _brake_pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _vel
     (setq _vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_center_wheel_angle
     (setq _front_center_wheel_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake_pressure
     (setq _brake_pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tuw_vehicle_msgs::RWDKinCmd :md5sum-) "a9dacac9c5016e81b75002abe61b3ee0")
(setf (get tuw_vehicle_msgs::RWDKinCmd :datatype-) "tuw_vehicle_msgs/RWDKinCmd")
(setf (get tuw_vehicle_msgs::RWDKinCmd :definition-)
      "Header header

# requested speed on the center of the rear axis [m/s]
float64 vel

# requested steering angle of the imaginary wheel at the center of the front axis [degrees]
float64 front_center_wheel_angle

# requested brake pressure for the system in bar measured at the front brake circuit
# if > 0, vel is being overriden and 0-torque is applied on the motors
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



(provide :tuw_vehicle_msgs/RWDKinCmd "a9dacac9c5016e81b75002abe61b3ee0")


