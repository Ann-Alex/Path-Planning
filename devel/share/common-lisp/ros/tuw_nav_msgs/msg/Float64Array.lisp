; Auto-generated. Do not edit!


(cl:in-package tuw_nav_msgs-msg)


;//! \htmlinclude Float64Array.msg.html

(cl:defclass <Float64Array> (roslisp-msg-protocol:ros-message)
  ((val
    :reader val
    :initarg :val
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Float64Array (<Float64Array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float64Array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float64Array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_nav_msgs-msg:<Float64Array> is deprecated: use tuw_nav_msgs-msg:Float64Array instead.")))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <Float64Array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:val-val is deprecated.  Use tuw_nav_msgs-msg:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float64Array>) ostream)
  "Serializes a message object of type '<Float64Array>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'val))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float64Array>) istream)
  "Deserializes a message object of type '<Float64Array>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'val) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'val)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float64Array>)))
  "Returns string type for a message object of type '<Float64Array>"
  "tuw_nav_msgs/Float64Array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64Array)))
  "Returns string type for a message object of type 'Float64Array"
  "tuw_nav_msgs/Float64Array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float64Array>)))
  "Returns md5sum for a message object of type '<Float64Array>"
  "65ac3f59e35977c61c27adccf4c68288")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float64Array)))
  "Returns md5sum for a message object of type 'Float64Array"
  "65ac3f59e35977c61c27adccf4c68288")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float64Array>)))
  "Returns full string definition for message of type '<Float64Array>"
  (cl:format cl:nil "float64[] val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float64Array)))
  "Returns full string definition for message of type 'Float64Array"
  (cl:format cl:nil "float64[] val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float64Array>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'val) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float64Array>))
  "Converts a ROS message object to a list"
  (cl:list 'Float64Array
    (cl:cons ':val (val msg))
))
