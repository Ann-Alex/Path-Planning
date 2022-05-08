; Auto-generated. Do not edit!


(cl:in-package tuw_nav_msgs-msg)


;//! \htmlinclude RouteSegments.msg.html

(cl:defclass <RouteSegments> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector tuw_nav_msgs-msg:RouteSegment)
   :initform (cl:make-array 0 :element-type 'tuw_nav_msgs-msg:RouteSegment :initial-element (cl:make-instance 'tuw_nav_msgs-msg:RouteSegment))))
)

(cl:defclass RouteSegments (<RouteSegments>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RouteSegments>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RouteSegments)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_nav_msgs-msg:<RouteSegments> is deprecated: use tuw_nav_msgs-msg:RouteSegments instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RouteSegments>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:header-val is deprecated.  Use tuw_nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <RouteSegments>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:segments-val is deprecated.  Use tuw_nav_msgs-msg:segments instead.")
  (segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RouteSegments>) ostream)
  "Serializes a message object of type '<RouteSegments>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RouteSegments>) istream)
  "Deserializes a message object of type '<RouteSegments>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_nav_msgs-msg:RouteSegment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RouteSegments>)))
  "Returns string type for a message object of type '<RouteSegments>"
  "tuw_nav_msgs/RouteSegments")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RouteSegments)))
  "Returns string type for a message object of type 'RouteSegments"
  "tuw_nav_msgs/RouteSegments")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RouteSegments>)))
  "Returns md5sum for a message object of type '<RouteSegments>"
  "475980bd7b5855e6d03b68f0282e448a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RouteSegments)))
  "Returns md5sum for a message object of type 'RouteSegments"
  "475980bd7b5855e6d03b68f0282e448a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RouteSegments>)))
  "Returns full string definition for message of type '<RouteSegments>"
  (cl:format cl:nil "# This expresses a marker/fiducial detection~%Header header                      # timestamp in the header is the acquisition time and frame~%~%RouteSegment[] segments            # detected markers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_nav_msgs/RouteSegment~%~%uint32 id                     # Segment id~%uint8 type                    # Segment type~%                              # NA      = 0~%                              # LINE    = 1~%                              # ARC     = 2~%                              # SPIROS  = 3~%                              # SPLINE  = 4~%uint8 orientation             # Segment orientation~%                              # CLOCKWISE  = 0~%                              # COUNTER_CLOCKWISE  = 1~%uint8 motion_type             # Motion type~%                              # NA = 0~%                              # FLAT = 1~%                              # DWA_SLOW = 2~%                              # DWA_FAST = 3~%                              # MPC_SLOW = 4~%                              # MPC_FAST = 5~%                              # PI_SLOW = 6~%                              # PI_FAST = 7~%geometry_msgs/Pose start~%geometry_msgs/Pose end~%geometry_msgs/Pose center    ~%int8 level~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RouteSegments)))
  "Returns full string definition for message of type 'RouteSegments"
  (cl:format cl:nil "# This expresses a marker/fiducial detection~%Header header                      # timestamp in the header is the acquisition time and frame~%~%RouteSegment[] segments            # detected markers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_nav_msgs/RouteSegment~%~%uint32 id                     # Segment id~%uint8 type                    # Segment type~%                              # NA      = 0~%                              # LINE    = 1~%                              # ARC     = 2~%                              # SPIROS  = 3~%                              # SPLINE  = 4~%uint8 orientation             # Segment orientation~%                              # CLOCKWISE  = 0~%                              # COUNTER_CLOCKWISE  = 1~%uint8 motion_type             # Motion type~%                              # NA = 0~%                              # FLAT = 1~%                              # DWA_SLOW = 2~%                              # DWA_FAST = 3~%                              # MPC_SLOW = 4~%                              # MPC_FAST = 5~%                              # PI_SLOW = 6~%                              # PI_FAST = 7~%geometry_msgs/Pose start~%geometry_msgs/Pose end~%geometry_msgs/Pose center    ~%int8 level~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RouteSegments>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RouteSegments>))
  "Converts a ROS message object to a list"
  (cl:list 'RouteSegments
    (cl:cons ':header (header msg))
    (cl:cons ':segments (segments msg))
))
