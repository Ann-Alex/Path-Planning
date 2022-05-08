;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::OrderArray)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'OrderArray (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ORDERARRAY")
  (make-package "TUW_MULTI_ROBOT_MSGS::ORDERARRAY"))

(in-package "ROS")
;;//! \htmlinclude OrderArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_multi_robot_msgs::OrderArray
  :super ros::object
  :slots (_header _orders ))

(defmethod tuw_multi_robot_msgs::OrderArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:orders __orders) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _orders __orders)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:orders
   (&rest __orders)
   (if (keywordp (car __orders))
       (send* _orders __orders)
     (progn
       (if __orders (setq _orders (car __orders)))
       _orders)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tuw_multi_robot_msgs/Order[] _orders
    (apply #'+ (send-all _orders :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tuw_multi_robot_msgs/Order[] _orders
     (write-long (length _orders) s)
     (dolist (elem _orders)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tuw_multi_robot_msgs/Order[] _orders
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _orders (let (r) (dotimes (i n) (push (instance tuw_multi_robot_msgs::Order :init) r)) r))
     (dolist (elem- _orders)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::OrderArray :md5sum-) "bbc022246db3f3814b8f8dca9834219a")
(setf (get tuw_multi_robot_msgs::OrderArray :datatype-) "tuw_multi_robot_msgs/OrderArray")
(setf (get tuw_multi_robot_msgs::OrderArray :definition-)
      "#################################################################
## List of multiple orders
#################################################################

Header header
tuw_multi_robot_msgs/Order[] orders


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
MSG: tuw_multi_robot_msgs/Order
#################################################################
## Good to deliver from position A to B (via intermediate 
## positions)
#################################################################

Header                 header
int32                  order_id
string                 order_name
Station[]              stations

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



(provide :tuw_multi_robot_msgs/OrderArray "bbc022246db3f3814b8f8dca9834219a")


