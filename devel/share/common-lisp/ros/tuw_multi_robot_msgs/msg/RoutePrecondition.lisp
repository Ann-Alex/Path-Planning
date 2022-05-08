; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude RoutePrecondition.msg.html

(cl:defclass <RoutePrecondition> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (current_route_segment
    :reader current_route_segment
    :initarg :current_route_segment
    :type cl:integer
    :initform 0))
)

(cl:defclass RoutePrecondition (<RoutePrecondition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutePrecondition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutePrecondition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<RoutePrecondition> is deprecated: use tuw_multi_robot_msgs-msg:RoutePrecondition instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <RoutePrecondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:robot_id-val is deprecated.  Use tuw_multi_robot_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'current_route_segment-val :lambda-list '(m))
(cl:defmethod current_route_segment-val ((m <RoutePrecondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:current_route_segment-val is deprecated.  Use tuw_multi_robot_msgs-msg:current_route_segment instead.")
  (current_route_segment m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutePrecondition>) ostream)
  "Serializes a message object of type '<RoutePrecondition>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:let* ((signed (cl:slot-value msg 'current_route_segment)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutePrecondition>) istream)
  "Deserializes a message object of type '<RoutePrecondition>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_route_segment) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutePrecondition>)))
  "Returns string type for a message object of type '<RoutePrecondition>"
  "tuw_multi_robot_msgs/RoutePrecondition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutePrecondition)))
  "Returns string type for a message object of type 'RoutePrecondition"
  "tuw_multi_robot_msgs/RoutePrecondition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutePrecondition>)))
  "Returns md5sum for a message object of type '<RoutePrecondition>"
  "5325912e1dc77bd158888f84bb4b040e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutePrecondition)))
  "Returns md5sum for a message object of type 'RoutePrecondition"
  "5325912e1dc77bd158888f84bb4b040e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutePrecondition>)))
  "Returns full string definition for message of type '<RoutePrecondition>"
  (cl:format cl:nil "#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route ~%## with such a message~%## The specific segments of a route are marked with such ~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right ~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition ~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutePrecondition)))
  "Returns full string definition for message of type 'RoutePrecondition"
  (cl:format cl:nil "#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route ~%## with such a message~%## The specific segments of a route are marked with such ~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right ~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition ~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutePrecondition>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutePrecondition>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutePrecondition
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':current_route_segment (current_route_segment msg))
))
