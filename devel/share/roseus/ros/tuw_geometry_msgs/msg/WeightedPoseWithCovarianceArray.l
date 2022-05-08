;; Auto-generated. Do not edit!


(when (boundp 'tuw_geometry_msgs::WeightedPoseWithCovarianceArray)
  (if (not (find-package "TUW_GEOMETRY_MSGS"))
    (make-package "TUW_GEOMETRY_MSGS"))
  (shadow 'WeightedPoseWithCovarianceArray (find-package "TUW_GEOMETRY_MSGS")))
(unless (find-package "TUW_GEOMETRY_MSGS::WEIGHTEDPOSEWITHCOVARIANCEARRAY")
  (make-package "TUW_GEOMETRY_MSGS::WEIGHTEDPOSEWITHCOVARIANCEARRAY"))

(in-package "ROS")
;;//! \htmlinclude WeightedPoseWithCovarianceArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_geometry_msgs::WeightedPoseWithCovarianceArray
  :super ros::object
  :slots (_header _poses ))

(defmethod tuw_geometry_msgs::WeightedPoseWithCovarianceArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:poses __poses) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _poses __poses)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tuw_geometry_msgs/WeightedPoseWithCovariance[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tuw_geometry_msgs/WeightedPoseWithCovariance[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tuw_geometry_msgs/WeightedPoseWithCovariance[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance tuw_geometry_msgs::WeightedPoseWithCovariance :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_geometry_msgs::WeightedPoseWithCovarianceArray :md5sum-) "f611e94fdb32f52eaee4a5137d1fa202")
(setf (get tuw_geometry_msgs::WeightedPoseWithCovarianceArray :datatype-) "tuw_geometry_msgs/WeightedPoseWithCovarianceArray")
(setf (get tuw_geometry_msgs::WeightedPoseWithCovarianceArray :definition-)
      "Header header

WeightedPoseWithCovariance[] poses
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
MSG: tuw_geometry_msgs/WeightedPoseWithCovariance
# This represents a pose in free space with uncertainty and a scoring weight.

geometry_msgs/Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

# [0, 1] weight of the pose, used for scoring a pose particle
float64 weight

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



(provide :tuw_geometry_msgs/WeightedPoseWithCovarianceArray "f611e94fdb32f52eaee4a5137d1fa202")


