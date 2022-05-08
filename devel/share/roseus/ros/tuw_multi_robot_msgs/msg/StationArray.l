;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::StationArray)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'StationArray (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::STATIONARRAY")
  (make-package "TUW_MULTI_ROBOT_MSGS::STATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude StationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_multi_robot_msgs::StationArray
  :super ros::object
  :slots (_header _stations ))

(defmethod tuw_multi_robot_msgs::StationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:stations __stations) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _stations __stations)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:stations
   (&rest __stations)
   (if (keywordp (car __stations))
       (send* _stations __stations)
     (progn
       (if __stations (setq _stations (car __stations)))
       _stations)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tuw_multi_robot_msgs/Station[] _stations
    (apply #'+ (send-all _stations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tuw_multi_robot_msgs/Station[] _stations
     (write-long (length _stations) s)
     (dolist (elem _stations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tuw_multi_robot_msgs/Station[] _stations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stations (let (r) (dotimes (i n) (push (instance tuw_multi_robot_msgs::Station :init) r)) r))
     (dolist (elem- _stations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::StationArray :md5sum-) "504d77c0e4ad28adb79d621cbf218466")
(setf (get tuw_multi_robot_msgs::StationArray :datatype-) "tuw_multi_robot_msgs/StationArray")
(setf (get tuw_multi_robot_msgs::StationArray :definition-)
      "#################################################################
## Array of Stations for Robots to Drive to
#################################################################

Header          header      # header
Station[]       stations    # array of stations

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

================================================================================
MSG: tuw_multi_robot_msgs/Station
#################################################################
## Station for Robots to Drive to
#################################################################

Header                 header       # header
int32                  id           # station ID
string                 name         # station name
geometry_msgs/Pose     pose         # station position
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :tuw_multi_robot_msgs/StationArray "504d77c0e4ad28adb79d621cbf218466")


