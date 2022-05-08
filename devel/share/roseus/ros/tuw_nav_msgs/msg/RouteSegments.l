;; Auto-generated. Do not edit!


(when (boundp 'tuw_nav_msgs::RouteSegments)
  (if (not (find-package "TUW_NAV_MSGS"))
    (make-package "TUW_NAV_MSGS"))
  (shadow 'RouteSegments (find-package "TUW_NAV_MSGS")))
(unless (find-package "TUW_NAV_MSGS::ROUTESEGMENTS")
  (make-package "TUW_NAV_MSGS::ROUTESEGMENTS"))

(in-package "ROS")
;;//! \htmlinclude RouteSegments.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_nav_msgs::RouteSegments
  :super ros::object
  :slots (_header _segments ))

(defmethod tuw_nav_msgs::RouteSegments
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:segments __segments) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _segments __segments)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tuw_nav_msgs/RouteSegment[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tuw_nav_msgs/RouteSegment[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tuw_nav_msgs/RouteSegment[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance tuw_nav_msgs::RouteSegment :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_nav_msgs::RouteSegments :md5sum-) "475980bd7b5855e6d03b68f0282e448a")
(setf (get tuw_nav_msgs::RouteSegments :datatype-) "tuw_nav_msgs/RouteSegments")
(setf (get tuw_nav_msgs::RouteSegments :definition-)
      "# This expresses a marker/fiducial detection
Header header                      # timestamp in the header is the acquisition time and frame

RouteSegment[] segments            # detected markers

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
MSG: tuw_nav_msgs/RouteSegment

uint32 id                     # Segment id
uint8 type                    # Segment type
                              # NA      = 0
                              # LINE    = 1
                              # ARC     = 2
                              # SPIROS  = 3
                              # SPLINE  = 4
uint8 orientation             # Segment orientation
                              # CLOCKWISE  = 0
                              # COUNTER_CLOCKWISE  = 1
uint8 motion_type             # Motion type
                              # NA = 0
                              # FLAT = 1
                              # DWA_SLOW = 2
                              # DWA_FAST = 3
                              # MPC_SLOW = 4
                              # MPC_FAST = 5
                              # PI_SLOW = 6
                              # PI_FAST = 7
geometry_msgs/Pose start
geometry_msgs/Pose end
geometry_msgs/Pose center    
int8 level


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



(provide :tuw_nav_msgs/RouteSegments "475980bd7b5855e6d03b68f0282e448a")


