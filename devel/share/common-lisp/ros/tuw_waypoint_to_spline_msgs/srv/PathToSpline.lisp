; Auto-generated. Do not edit!


(cl:in-package tuw_waypoint_to_spline_msgs-srv)


;//! \htmlinclude PathToSpline-request.msg.html

(cl:defclass <PathToSpline-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass PathToSpline-request (<PathToSpline-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathToSpline-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathToSpline-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_waypoint_to_spline_msgs-srv:<PathToSpline-request> is deprecated: use tuw_waypoint_to_spline_msgs-srv:PathToSpline-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <PathToSpline-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_waypoint_to_spline_msgs-srv:path-val is deprecated.  Use tuw_waypoint_to_spline_msgs-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathToSpline-request>) ostream)
  "Serializes a message object of type '<PathToSpline-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathToSpline-request>) istream)
  "Deserializes a message object of type '<PathToSpline-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathToSpline-request>)))
  "Returns string type for a service object of type '<PathToSpline-request>"
  "tuw_waypoint_to_spline_msgs/PathToSplineRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathToSpline-request)))
  "Returns string type for a service object of type 'PathToSpline-request"
  "tuw_waypoint_to_spline_msgs/PathToSplineRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathToSpline-request>)))
  "Returns md5sum for a message object of type '<PathToSpline-request>"
  "d25abe2e286add702e8b898ea4515cc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathToSpline-request)))
  "Returns md5sum for a message object of type 'PathToSpline-request"
  "d25abe2e286add702e8b898ea4515cc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathToSpline-request>)))
  "Returns full string definition for message of type '<PathToSpline-request>"
  (cl:format cl:nil "nav_msgs/Path path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathToSpline-request)))
  "Returns full string definition for message of type 'PathToSpline-request"
  (cl:format cl:nil "nav_msgs/Path path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathToSpline-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathToSpline-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PathToSpline-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude PathToSpline-response.msg.html

(cl:defclass <PathToSpline-response> (roslisp-msg-protocol:ros-message)
  ((spline
    :reader spline
    :initarg :spline
    :type tuw_nav_msgs-msg:Spline
    :initform (cl:make-instance 'tuw_nav_msgs-msg:Spline)))
)

(cl:defclass PathToSpline-response (<PathToSpline-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathToSpline-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathToSpline-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_waypoint_to_spline_msgs-srv:<PathToSpline-response> is deprecated: use tuw_waypoint_to_spline_msgs-srv:PathToSpline-response instead.")))

(cl:ensure-generic-function 'spline-val :lambda-list '(m))
(cl:defmethod spline-val ((m <PathToSpline-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_waypoint_to_spline_msgs-srv:spline-val is deprecated.  Use tuw_waypoint_to_spline_msgs-srv:spline instead.")
  (spline m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathToSpline-response>) ostream)
  "Serializes a message object of type '<PathToSpline-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'spline) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathToSpline-response>) istream)
  "Deserializes a message object of type '<PathToSpline-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'spline) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathToSpline-response>)))
  "Returns string type for a service object of type '<PathToSpline-response>"
  "tuw_waypoint_to_spline_msgs/PathToSplineResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathToSpline-response)))
  "Returns string type for a service object of type 'PathToSpline-response"
  "tuw_waypoint_to_spline_msgs/PathToSplineResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathToSpline-response>)))
  "Returns md5sum for a message object of type '<PathToSpline-response>"
  "d25abe2e286add702e8b898ea4515cc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathToSpline-response)))
  "Returns md5sum for a message object of type 'PathToSpline-response"
  "d25abe2e286add702e8b898ea4515cc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathToSpline-response>)))
  "Returns full string definition for message of type '<PathToSpline-response>"
  (cl:format cl:nil "tuw_nav_msgs/Spline spline~%~%================================================================================~%MSG: tuw_nav_msgs/Spline~%Header header~%float64[] knots~%Float64Array[] ctrls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_nav_msgs/Float64Array~%float64[] val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathToSpline-response)))
  "Returns full string definition for message of type 'PathToSpline-response"
  (cl:format cl:nil "tuw_nav_msgs/Spline spline~%~%================================================================================~%MSG: tuw_nav_msgs/Spline~%Header header~%float64[] knots~%Float64Array[] ctrls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_nav_msgs/Float64Array~%float64[] val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathToSpline-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'spline))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathToSpline-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PathToSpline-response
    (cl:cons ':spline (spline msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PathToSpline)))
  'PathToSpline-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PathToSpline)))
  'PathToSpline-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathToSpline)))
  "Returns string type for a service object of type '<PathToSpline>"
  "tuw_waypoint_to_spline_msgs/PathToSpline")