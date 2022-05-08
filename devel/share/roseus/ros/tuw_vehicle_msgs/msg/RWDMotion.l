;; Auto-generated. Do not edit!


(when (boundp 'tuw_vehicle_msgs::RWDMotion)
  (if (not (find-package "TUW_VEHICLE_MSGS"))
    (make-package "TUW_VEHICLE_MSGS"))
  (shadow 'RWDMotion (find-package "TUW_VEHICLE_MSGS")))
(unless (find-package "TUW_VEHICLE_MSGS::RWDMOTION")
  (make-package "TUW_VEHICLE_MSGS::RWDMOTION"))

(in-package "ROS")
;;//! \htmlinclude RWDMotion.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_vehicle_msgs::RWDMotion
  :super ros::object
  :slots (_header _x_vel _y_vel _yaw_rate _roll_rate ))

(defmethod tuw_vehicle_msgs::RWDMotion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x_vel __x_vel) 0.0)
    ((:y_vel __y_vel) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:roll_rate __roll_rate) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _x_vel (float __x_vel))
   (setq _y_vel (float __y_vel))
   (setq _yaw_rate (float __yaw_rate))
   (setq _roll_rate (float __roll_rate))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x_vel
   (&optional __x_vel)
   (if __x_vel (setq _x_vel __x_vel)) _x_vel)
  (:y_vel
   (&optional __y_vel)
   (if __y_vel (setq _y_vel __y_vel)) _y_vel)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:roll_rate
   (&optional __roll_rate)
   (if __roll_rate (setq _roll_rate __roll_rate)) _roll_rate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _x_vel
    8
    ;; float64 _y_vel
    8
    ;; float64 _yaw_rate
    8
    ;; float64 _roll_rate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _x_vel
       (sys::poke _x_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_vel
       (sys::poke _y_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_rate
       (sys::poke _roll_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _x_vel
     (setq _x_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_vel
     (setq _y_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_rate
     (setq _roll_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tuw_vehicle_msgs::RWDMotion :md5sum-) "8c19313c75b199649c626db68589a3e7")
(setf (get tuw_vehicle_msgs::RWDMotion :datatype-) "tuw_vehicle_msgs/RWDMotion")
(setf (get tuw_vehicle_msgs::RWDMotion :definition-)
      "Header header
# velocity in x-direction in m/s
float64 x_vel
# velocity in y-direction in m/s
float64 y_vel
# yaw rate in deg/s
float64 yaw_rate
# roll rate in deg/s
float64 roll_rate

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



(provide :tuw_vehicle_msgs/RWDMotion "8c19313c75b199649c626db68589a3e7")


