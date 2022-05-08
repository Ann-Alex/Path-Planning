;; Auto-generated. Do not edit!


(when (boundp 'tuw_geometry_msgs::LineSegments)
  (if (not (find-package "TUW_GEOMETRY_MSGS"))
    (make-package "TUW_GEOMETRY_MSGS"))
  (shadow 'LineSegments (find-package "TUW_GEOMETRY_MSGS")))
(unless (find-package "TUW_GEOMETRY_MSGS::LINESEGMENTS")
  (make-package "TUW_GEOMETRY_MSGS::LINESEGMENTS"))

(in-package "ROS")
;;//! \htmlinclude LineSegments.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_geometry_msgs::LineSegments
  :super ros::object
  :slots (_header _segments ))

(defmethod tuw_geometry_msgs::LineSegments
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
    ;; tuw_geometry_msgs/LineSegment[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tuw_geometry_msgs/LineSegment[] _segments
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
   ;; tuw_geometry_msgs/LineSegment[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance tuw_geometry_msgs::LineSegment :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_geometry_msgs::LineSegments :md5sum-) "266fc42f8083d1cc6c451ea3a5df3765")
(setf (get tuw_geometry_msgs::LineSegments :datatype-) "tuw_geometry_msgs/LineSegments")
(setf (get tuw_geometry_msgs::LineSegments :definition-)
      "Header header                      # timestamp in the header is the acquisition time and frame

LineSegment[] segments             # detected lines
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
MSG: tuw_geometry_msgs/LineSegment
uint32 id                     # Segment id

geometry_msgs/Point p0        # linesegment endpoint 0
geometry_msgs/Point p1        # linesegment endpoint 1
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :tuw_geometry_msgs/LineSegments "266fc42f8083d1cc6c451ea3a5df3765")


