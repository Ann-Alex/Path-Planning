; Auto-generated. Do not edit!


(cl:in-package tuw_gazebo_msgs-msg)


;//! \htmlinclude JointState.msg.html

(cl:defclass <JointState> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (xdot
    :reader xdot
    :initarg :xdot
    :type cl:float
    :initform 0.0)
   (xddot
    :reader xddot
    :initarg :xddot
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointState (<JointState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_gazebo_msgs-msg:<JointState> is deprecated: use tuw_gazebo_msgs-msg:JointState instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <JointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_gazebo_msgs-msg:x-val is deprecated.  Use tuw_gazebo_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'xdot-val :lambda-list '(m))
(cl:defmethod xdot-val ((m <JointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_gazebo_msgs-msg:xdot-val is deprecated.  Use tuw_gazebo_msgs-msg:xdot instead.")
  (xdot m))

(cl:ensure-generic-function 'xddot-val :lambda-list '(m))
(cl:defmethod xddot-val ((m <JointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_gazebo_msgs-msg:xddot-val is deprecated.  Use tuw_gazebo_msgs-msg:xddot instead.")
  (xddot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointState>) ostream)
  "Serializes a message object of type '<JointState>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xdot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xddot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointState>) istream)
  "Deserializes a message object of type '<JointState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xdot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xddot) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointState>)))
  "Returns string type for a message object of type '<JointState>"
  "tuw_gazebo_msgs/JointState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointState)))
  "Returns string type for a message object of type 'JointState"
  "tuw_gazebo_msgs/JointState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointState>)))
  "Returns md5sum for a message object of type '<JointState>"
  "640c08b997ef5ea0a1e6b2142dbc0465")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointState)))
  "Returns md5sum for a message object of type 'JointState"
  "640c08b997ef5ea0a1e6b2142dbc0465")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointState>)))
  "Returns full string definition for message of type '<JointState>"
  (cl:format cl:nil "float64 x~%float64 xdot~%float64 xddot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointState)))
  "Returns full string definition for message of type 'JointState"
  (cl:format cl:nil "float64 x~%float64 xdot~%float64 xddot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointState>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointState>))
  "Converts a ROS message object to a list"
  (cl:list 'JointState
    (cl:cons ':x (x msg))
    (cl:cons ':xdot (xdot msg))
    (cl:cons ':xddot (xddot msg))
))
