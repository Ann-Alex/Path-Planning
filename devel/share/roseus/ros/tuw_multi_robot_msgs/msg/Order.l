;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::Order)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'Order (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ORDER")
  (make-package "TUW_MULTI_ROBOT_MSGS::ORDER"))

(in-package "ROS")
;;//! \htmlinclude Order.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_multi_robot_msgs::Order
  :super ros::object
  :slots (_header _order_id _order_name _stations ))

(defmethod tuw_multi_robot_msgs::Order
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:order_id __order_id) 0)
    ((:order_name __order_name) "")
    ((:stations __stations) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _order_id (round __order_id))
   (setq _order_name (string __order_name))
   (setq _stations __stations)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:order_id
   (&optional __order_id)
   (if __order_id (setq _order_id __order_id)) _order_id)
  (:order_name
   (&optional __order_name)
   (if __order_name (setq _order_name __order_name)) _order_name)
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
    ;; int32 _order_id
    4
    ;; string _order_name
    4 (length _order_name)
    ;; tuw_multi_robot_msgs/Station[] _stations
    (apply #'+ (send-all _stations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _order_id
       (write-long _order_id s)
     ;; string _order_name
       (write-long (length _order_name) s) (princ _order_name s)
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
   ;; int32 _order_id
     (setq _order_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _order_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get tuw_multi_robot_msgs::Order :md5sum-) "482fb916d477e45e362167df5ed6a68c")
(setf (get tuw_multi_robot_msgs::Order :datatype-) "tuw_multi_robot_msgs/Order")
(setf (get tuw_multi_robot_msgs::Order :definition-)
      "#################################################################
## Good to deliver from position A to B (via intermediate 
## positions)
#################################################################

Header                 header
int32                  order_id
string                 order_name
Station[]              stations

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



(provide :tuw_multi_robot_msgs/Order "482fb916d477e45e362167df5ed6a68c")


