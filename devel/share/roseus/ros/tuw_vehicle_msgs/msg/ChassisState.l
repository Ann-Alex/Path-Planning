;; Auto-generated. Do not edit!


(when (boundp 'tuw_vehicle_msgs::ChassisState)
  (if (not (find-package "TUW_VEHICLE_MSGS"))
    (make-package "TUW_VEHICLE_MSGS"))
  (shadow 'ChassisState (find-package "TUW_VEHICLE_MSGS")))
(unless (find-package "TUW_VEHICLE_MSGS::CHASSISSTATE")
  (make-package "TUW_VEHICLE_MSGS::CHASSISSTATE"))

(in-package "ROS")
;;//! \htmlinclude ChassisState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_vehicle_msgs::ChassisState
  :super ros::object
  :slots (_header _vx _vy _omg _steering_angle _steering_speed _front_brake_pressure _rear_brake_pressure ))

(defmethod tuw_vehicle_msgs::ChassisState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:omg __omg) 0.0)
    ((:steering_angle __steering_angle) 0.0)
    ((:steering_speed __steering_speed) 0.0)
    ((:front_brake_pressure __front_brake_pressure) 0.0)
    ((:rear_brake_pressure __rear_brake_pressure) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _omg (float __omg))
   (setq _steering_angle (float __steering_angle))
   (setq _steering_speed (float __steering_speed))
   (setq _front_brake_pressure (float __front_brake_pressure))
   (setq _rear_brake_pressure (float __rear_brake_pressure))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:omg
   (&optional __omg)
   (if __omg (setq _omg __omg)) _omg)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:steering_speed
   (&optional __steering_speed)
   (if __steering_speed (setq _steering_speed __steering_speed)) _steering_speed)
  (:front_brake_pressure
   (&optional __front_brake_pressure)
   (if __front_brake_pressure (setq _front_brake_pressure __front_brake_pressure)) _front_brake_pressure)
  (:rear_brake_pressure
   (&optional __rear_brake_pressure)
   (if __rear_brake_pressure (setq _rear_brake_pressure __rear_brake_pressure)) _rear_brake_pressure)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _omg
    8
    ;; float64 _steering_angle
    8
    ;; float64 _steering_speed
    8
    ;; float64 _front_brake_pressure
    8
    ;; float64 _rear_brake_pressure
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omg
       (sys::poke _omg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_speed
       (sys::poke _steering_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_brake_pressure
       (sys::poke _front_brake_pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_brake_pressure
       (sys::poke _rear_brake_pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omg
     (setq _omg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_speed
     (setq _steering_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_brake_pressure
     (setq _front_brake_pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_brake_pressure
     (setq _rear_brake_pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tuw_vehicle_msgs::ChassisState :md5sum-) "625847a578b2c95d3b5adc71c6f670c0")
(setf (get tuw_vehicle_msgs::ChassisState :datatype-) "tuw_vehicle_msgs/ChassisState")
(setf (get tuw_vehicle_msgs::ChassisState :definition-)
      "Header header

float64 vx
float64 vy
float64 omg

# in degrees, negative to the left
float64 steering_angle

# in deg/s, negative to the left
float64 steering_speed

# in bar
float64 front_brake_pressure
float64 rear_brake_pressure

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



(provide :tuw_vehicle_msgs/ChassisState "625847a578b2c95d3b5adc71c6f670c0")


