; Auto-generated. Do not edit!


(cl:in-package tuw_gazebo_msgs-msg)


;//! \htmlinclude Measure.msg.html

(cl:defclass <Measure> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0))
)

(cl:defclass Measure (<Measure>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Measure>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Measure)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_gazebo_msgs-msg:<Measure> is deprecated: use tuw_gazebo_msgs-msg:Measure instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Measure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_gazebo_msgs-msg:x-val is deprecated.  Use tuw_gazebo_msgs-msg:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Measure>) ostream)
  "Serializes a message object of type '<Measure>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Measure>) istream)
  "Deserializes a message object of type '<Measure>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Measure>)))
  "Returns string type for a message object of type '<Measure>"
  "tuw_gazebo_msgs/Measure")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Measure)))
  "Returns string type for a message object of type 'Measure"
  "tuw_gazebo_msgs/Measure")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Measure>)))
  "Returns md5sum for a message object of type '<Measure>"
  "76b81e0561db142e2fc5c30d562dc4be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Measure)))
  "Returns md5sum for a message object of type 'Measure"
  "76b81e0561db142e2fc5c30d562dc4be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Measure>)))
  "Returns full string definition for message of type '<Measure>"
  (cl:format cl:nil "float64 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Measure)))
  "Returns full string definition for message of type 'Measure"
  (cl:format cl:nil "float64 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Measure>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Measure>))
  "Converts a ROS message object to a list"
  (cl:list 'Measure
    (cl:cons ':x (x msg))
))
