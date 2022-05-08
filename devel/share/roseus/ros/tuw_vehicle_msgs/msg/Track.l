;; Auto-generated. Do not edit!


(when (boundp 'tuw_vehicle_msgs::Track)
  (if (not (find-package "TUW_VEHICLE_MSGS"))
    (make-package "TUW_VEHICLE_MSGS"))
  (shadow 'Track (find-package "TUW_VEHICLE_MSGS")))
(unless (find-package "TUW_VEHICLE_MSGS::TRACK")
  (make-package "TUW_VEHICLE_MSGS::TRACK"))

(in-package "ROS")
;;//! \htmlinclude Track.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_vehicle_msgs::Track
  :super ros::object
  :slots (_header _left_border _right_border _waypoints ))

(defmethod tuw_vehicle_msgs::Track
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_border __left_border) ())
    ((:right_border __right_border) ())
    ((:waypoints __waypoints) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_border __left_border)
   (setq _right_border __right_border)
   (setq _waypoints __waypoints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_border
   (&rest __left_border)
   (if (keywordp (car __left_border))
       (send* _left_border __left_border)
     (progn
       (if __left_border (setq _left_border (car __left_border)))
       _left_border)))
  (:right_border
   (&rest __right_border)
   (if (keywordp (car __right_border))
       (send* _right_border __right_border)
     (progn
       (if __right_border (setq _right_border (car __right_border)))
       _right_border)))
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tuw_vehicle_msgs/TrackMarking[] _left_border
    (apply #'+ (send-all _left_border :serialization-length)) 4
    ;; tuw_vehicle_msgs/TrackMarking[] _right_border
    (apply #'+ (send-all _right_border :serialization-length)) 4
    ;; geometry_msgs/Pose2D[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tuw_vehicle_msgs/TrackMarking[] _left_border
     (write-long (length _left_border) s)
     (dolist (elem _left_border)
       (send elem :serialize s)
       )
     ;; tuw_vehicle_msgs/TrackMarking[] _right_border
     (write-long (length _right_border) s)
     (dolist (elem _right_border)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose2D[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tuw_vehicle_msgs/TrackMarking[] _left_border
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_border (let (r) (dotimes (i n) (push (instance tuw_vehicle_msgs::TrackMarking :init) r)) r))
     (dolist (elem- _left_border)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tuw_vehicle_msgs/TrackMarking[] _right_border
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_border (let (r) (dotimes (i n) (push (instance tuw_vehicle_msgs::TrackMarking :init) r)) r))
     (dolist (elem- _right_border)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose2D[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_vehicle_msgs::Track :md5sum-) "97f194a3cc8ae0e44be5bd32e193a98f")
(setf (get tuw_vehicle_msgs::Track :datatype-) "tuw_vehicle_msgs/Track")
(setf (get tuw_vehicle_msgs::Track :definition-)
      "# Formula Student Racetrack
Header header

# ordered sequence of markings on the left side of the track
TrackMarking[] left_border

# ordered sequence of markings on the right side of the track
TrackMarking[] right_border

# ordered sequence of path points on the center of the track
geometry_msgs/Pose2D[] waypoints

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
MSG: tuw_vehicle_msgs/TrackMarking
# single marking on the track

# position of the marking in space, as well as normal angle along the racetrack path
geometry_msgs/Pose2D pose

# type of track marking
uint8 type

uint8 TRACK_MARKING_TYPE_UNKNOWN = 0
uint8 TRACK_MARKING_TYPE_LEFT = 1
uint8 TRACK_MARKING_TYPE_RIGHT = 2
uint8 TRACK_MARKING_TYPE_START_STOP = 4

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :tuw_vehicle_msgs/Track "97f194a3cc8ae0e44be5bd32e193a98f")


