; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude RouteSegment.msg.html

(cl:defclass <RouteSegment> (roslisp-msg-protocol:ros-message)
  ((segment_id
    :reader segment_id
    :initarg :segment_id
    :type cl:integer
    :initform 0)
   (preconditions
    :reader preconditions
    :initarg :preconditions
    :type (cl:vector tuw_multi_robot_msgs-msg:RoutePrecondition)
   :initform (cl:make-array 0 :element-type 'tuw_multi_robot_msgs-msg:RoutePrecondition :initial-element (cl:make-instance 'tuw_multi_robot_msgs-msg:RoutePrecondition)))
   (start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (end
    :reader end
    :initarg :end
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0))
)

(cl:defclass RouteSegment (<RouteSegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RouteSegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RouteSegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<RouteSegment> is deprecated: use tuw_multi_robot_msgs-msg:RouteSegment instead.")))

(cl:ensure-generic-function 'segment_id-val :lambda-list '(m))
(cl:defmethod segment_id-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:segment_id-val is deprecated.  Use tuw_multi_robot_msgs-msg:segment_id instead.")
  (segment_id m))

(cl:ensure-generic-function 'preconditions-val :lambda-list '(m))
(cl:defmethod preconditions-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:preconditions-val is deprecated.  Use tuw_multi_robot_msgs-msg:preconditions instead.")
  (preconditions m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:start-val is deprecated.  Use tuw_multi_robot_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:end-val is deprecated.  Use tuw_multi_robot_msgs-msg:end instead.")
  (end m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:width-val is deprecated.  Use tuw_multi_robot_msgs-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RouteSegment>) ostream)
  "Serializes a message object of type '<RouteSegment>"
  (cl:let* ((signed (cl:slot-value msg 'segment_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'preconditions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'preconditions))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RouteSegment>) istream)
  "Deserializes a message object of type '<RouteSegment>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'segment_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'preconditions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'preconditions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_multi_robot_msgs-msg:RoutePrecondition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RouteSegment>)))
  "Returns string type for a message object of type '<RouteSegment>"
  "tuw_multi_robot_msgs/RouteSegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RouteSegment)))
  "Returns string type for a message object of type 'RouteSegment"
  "tuw_multi_robot_msgs/RouteSegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RouteSegment>)))
  "Returns md5sum for a message object of type '<RouteSegment>"
  "3de3459e51270b121f6fd1fa4b97bc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RouteSegment)))
  "Returns md5sum for a message object of type 'RouteSegment"
  "3de3459e51270b121f6fd1fa4b97bc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RouteSegment>)))
  "Returns full string definition for message of type '<RouteSegment>"
  (cl:format cl:nil "#################################################################~%## Describes a segment on a route with: start, end, width~%## and preconditions for synchronisation to other robots~%#################################################################~%~%int32 segment_id                        # the unique identifier of a segment~%RoutePrecondition[] preconditions       # the preconditions, which have to be met before entering a segment~%geometry_msgs/Pose start                # startpoint of the segment~%geometry_msgs/Pose end                  # endpoint of the segment~%float32 width                           # width of the segment ~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route ~%## with such a message~%## The specific segments of a route are marked with such ~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right ~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition ~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RouteSegment)))
  "Returns full string definition for message of type 'RouteSegment"
  (cl:format cl:nil "#################################################################~%## Describes a segment on a route with: start, end, width~%## and preconditions for synchronisation to other robots~%#################################################################~%~%int32 segment_id                        # the unique identifier of a segment~%RoutePrecondition[] preconditions       # the preconditions, which have to be met before entering a segment~%geometry_msgs/Pose start                # startpoint of the segment~%geometry_msgs/Pose end                  # endpoint of the segment~%float32 width                           # width of the segment ~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route ~%## with such a message~%## The specific segments of a route are marked with such ~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right ~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition ~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RouteSegment>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'preconditions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RouteSegment>))
  "Converts a ROS message object to a list"
  (cl:list 'RouteSegment
    (cl:cons ':segment_id (segment_id msg))
    (cl:cons ':preconditions (preconditions msg))
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
    (cl:cons ':width (width msg))
))
