;; Auto-generated. Do not edit!


(when (boundp 'tuw_waypoint_to_spline_msgs::PathToSpline)
  (if (not (find-package "TUW_WAYPOINT_TO_SPLINE_MSGS"))
    (make-package "TUW_WAYPOINT_TO_SPLINE_MSGS"))
  (shadow 'PathToSpline (find-package "TUW_WAYPOINT_TO_SPLINE_MSGS")))
(unless (find-package "TUW_WAYPOINT_TO_SPLINE_MSGS::PATHTOSPLINE")
  (make-package "TUW_WAYPOINT_TO_SPLINE_MSGS::PATHTOSPLINE"))
(unless (find-package "TUW_WAYPOINT_TO_SPLINE_MSGS::PATHTOSPLINEREQUEST")
  (make-package "TUW_WAYPOINT_TO_SPLINE_MSGS::PATHTOSPLINEREQUEST"))
(unless (find-package "TUW_WAYPOINT_TO_SPLINE_MSGS::PATHTOSPLINERESPONSE")
  (make-package "TUW_WAYPOINT_TO_SPLINE_MSGS::PATHTOSPLINERESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "TUW_NAV_MSGS"))
  (ros::roseus-add-msgs "tuw_nav_msgs"))


(defclass tuw_waypoint_to_spline_msgs::PathToSplineRequest
  :super ros::object
  :slots (_path ))

(defmethod tuw_waypoint_to_spline_msgs::PathToSplineRequest
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(defclass tuw_waypoint_to_spline_msgs::PathToSplineResponse
  :super ros::object
  :slots (_spline ))

(defmethod tuw_waypoint_to_spline_msgs::PathToSplineResponse
  (:init
   (&key
    ((:spline __spline) (instance tuw_nav_msgs::Spline :init))
    )
   (send-super :init)
   (setq _spline __spline)
   self)
  (:spline
   (&rest __spline)
   (if (keywordp (car __spline))
       (send* _spline __spline)
     (progn
       (if __spline (setq _spline (car __spline)))
       _spline)))
  (:serialization-length
   ()
   (+
    ;; tuw_nav_msgs/Spline _spline
    (send _spline :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tuw_nav_msgs/Spline _spline
       (send _spline :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tuw_nav_msgs/Spline _spline
     (send _spline :deserialize buf ptr-) (incf ptr- (send _spline :serialization-length))
   ;;
   self)
  )

(defclass tuw_waypoint_to_spline_msgs::PathToSpline
  :super ros::object
  :slots ())

(setf (get tuw_waypoint_to_spline_msgs::PathToSpline :md5sum-) "d25abe2e286add702e8b898ea4515cc4")
(setf (get tuw_waypoint_to_spline_msgs::PathToSpline :datatype-) "tuw_waypoint_to_spline_msgs/PathToSpline")
(setf (get tuw_waypoint_to_spline_msgs::PathToSpline :request) tuw_waypoint_to_spline_msgs::PathToSplineRequest)
(setf (get tuw_waypoint_to_spline_msgs::PathToSpline :response) tuw_waypoint_to_spline_msgs::PathToSplineResponse)

(defmethod tuw_waypoint_to_spline_msgs::PathToSplineRequest
  (:response () (instance tuw_waypoint_to_spline_msgs::PathToSplineResponse :init)))

(setf (get tuw_waypoint_to_spline_msgs::PathToSplineRequest :md5sum-) "d25abe2e286add702e8b898ea4515cc4")
(setf (get tuw_waypoint_to_spline_msgs::PathToSplineRequest :datatype-) "tuw_waypoint_to_spline_msgs/PathToSplineRequest")
(setf (get tuw_waypoint_to_spline_msgs::PathToSplineRequest :definition-)
      "nav_msgs/Path path

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---
tuw_nav_msgs/Spline spline

================================================================================
MSG: tuw_nav_msgs/Spline
Header header
float64[] knots
Float64Array[] ctrls

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
MSG: tuw_nav_msgs/Float64Array
float64[] val
")

(setf (get tuw_waypoint_to_spline_msgs::PathToSplineResponse :md5sum-) "d25abe2e286add702e8b898ea4515cc4")
(setf (get tuw_waypoint_to_spline_msgs::PathToSplineResponse :datatype-) "tuw_waypoint_to_spline_msgs/PathToSplineResponse")
(setf (get tuw_waypoint_to_spline_msgs::PathToSplineResponse :definition-)
      "nav_msgs/Path path

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---
tuw_nav_msgs/Spline spline

================================================================================
MSG: tuw_nav_msgs/Spline
Header header
float64[] knots
Float64Array[] ctrls

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
MSG: tuw_nav_msgs/Float64Array
float64[] val
")



(provide :tuw_waypoint_to_spline_msgs/PathToSpline "d25abe2e286add702e8b898ea4515cc4")


