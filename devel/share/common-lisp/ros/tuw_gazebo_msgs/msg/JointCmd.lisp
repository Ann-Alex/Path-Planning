; Auto-generated. Do not edit!


(cl:in-package tuw_gazebo_msgs-msg)


;//! \htmlinclude JointCmd.msg.html

(cl:defclass <JointCmd> (roslisp-msg-protocol:ros-message)
  ((u
    :reader u
    :initarg :u
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointCmd (<JointCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_gazebo_msgs-msg:<JointCmd> is deprecated: use tuw_gazebo_msgs-msg:JointCmd instead.")))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <JointCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_gazebo_msgs-msg:u-val is deprecated.  Use tuw_gazebo_msgs-msg:u instead.")
  (u m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointCmd>) ostream)
  "Serializes a message object of type '<JointCmd>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'u))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointCmd>) istream)
  "Deserializes a message object of type '<JointCmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointCmd>)))
  "Returns string type for a message object of type '<JointCmd>"
  "tuw_gazebo_msgs/JointCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointCmd)))
  "Returns string type for a message object of type 'JointCmd"
  "tuw_gazebo_msgs/JointCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointCmd>)))
  "Returns md5sum for a message object of type '<JointCmd>"
  "988df341e727ad40b85d2b8acf9471e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointCmd)))
  "Returns md5sum for a message object of type 'JointCmd"
  "988df341e727ad40b85d2b8acf9471e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointCmd>)))
  "Returns full string definition for message of type '<JointCmd>"
  (cl:format cl:nil "float64 u~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointCmd)))
  "Returns full string definition for message of type 'JointCmd"
  (cl:format cl:nil "float64 u~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointCmd>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'JointCmd
    (cl:cons ':u (u msg))
))
