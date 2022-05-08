; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude Route.msg.html

(cl:defclass <Route> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector tuw_multi_robot_msgs-msg:RouteSegment)
   :initform (cl:make-array 0 :element-type 'tuw_multi_robot_msgs-msg:RouteSegment :initial-element (cl:make-instance 'tuw_multi_robot_msgs-msg:RouteSegment))))
)

(cl:defclass Route (<Route>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Route>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Route)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<Route> is deprecated: use tuw_multi_robot_msgs-msg:Route instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Route>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:header-val is deprecated.  Use tuw_multi_robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <Route>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:segments-val is deprecated.  Use tuw_multi_robot_msgs-msg:segments instead.")
  (segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Route>) ostream)
  "Serializes a message object of type '<Route>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Route>) istream)
  "Deserializes a message object of type '<Route>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_multi_robot_msgs-msg:RouteSegment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Route>)))
  "Returns string type for a message object of type '<Route>"
  "tuw_multi_robot_msgs/Route")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Route)))
  "Returns string type for a message object of type 'Route"
  "tuw_multi_robot_msgs/Route")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Route>)))
  "Returns md5sum for a message object of type '<Route>"
  "725bc552e397bfa7fb11a0c9033b50c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Route)))
  "Returns md5sum for a message object of type 'Route"
  "725bc552e397bfa7fb11a0c9033b50c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Route>)))
  "Returns full string definition for message of type '<Route>"
  (cl:format cl:nil "#################################################################~%## used to guide a single vehicle along segments~%#################################################################~%Header header # time of route generation~%RouteSegment[] segments # route segments a robot has to follow~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RouteSegment~%#################################################################~%## Describes a segment on a route with: start, end, width~%## and preconditions for synchronisation to other robots~%#################################################################~%~%int32 segment_id                        # the unique identifier of a segment~%RoutePrecondition[] preconditions       # the preconditions, which have to be met before entering a segment~%geometry_msgs/Pose start                # startpoint of the segment~%geometry_msgs/Pose end                  # endpoint of the segment~%float32 width                           # width of the segment ~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route ~%## with such a message~%## The specific segments of a route are marked with such ~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right ~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition ~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Route)))
  "Returns full string definition for message of type 'Route"
  (cl:format cl:nil "#################################################################~%## used to guide a single vehicle along segments~%#################################################################~%Header header # time of route generation~%RouteSegment[] segments # route segments a robot has to follow~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RouteSegment~%#################################################################~%## Describes a segment on a route with: start, end, width~%## and preconditions for synchronisation to other robots~%#################################################################~%~%int32 segment_id                        # the unique identifier of a segment~%RoutePrecondition[] preconditions       # the preconditions, which have to be met before entering a segment~%geometry_msgs/Pose start                # startpoint of the segment~%geometry_msgs/Pose end                  # endpoint of the segment~%float32 width                           # width of the segment ~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route ~%## with such a message~%## The specific segments of a route are marked with such ~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right ~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition ~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Route>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Route>))
  "Converts a ROS message object to a list"
  (cl:list 'Route
    (cl:cons ':header (header msg))
    (cl:cons ':segments (segments msg))
))
