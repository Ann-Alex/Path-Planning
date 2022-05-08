; Auto-generated. Do not edit!


(cl:in-package tuw_nav_msgs-msg)


;//! \htmlinclude Spline.msg.html

(cl:defclass <Spline> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (knots
    :reader knots
    :initarg :knots
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (ctrls
    :reader ctrls
    :initarg :ctrls
    :type (cl:vector tuw_nav_msgs-msg:Float64Array)
   :initform (cl:make-array 0 :element-type 'tuw_nav_msgs-msg:Float64Array :initial-element (cl:make-instance 'tuw_nav_msgs-msg:Float64Array))))
)

(cl:defclass Spline (<Spline>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Spline>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Spline)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_nav_msgs-msg:<Spline> is deprecated: use tuw_nav_msgs-msg:Spline instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Spline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:header-val is deprecated.  Use tuw_nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'knots-val :lambda-list '(m))
(cl:defmethod knots-val ((m <Spline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:knots-val is deprecated.  Use tuw_nav_msgs-msg:knots instead.")
  (knots m))

(cl:ensure-generic-function 'ctrls-val :lambda-list '(m))
(cl:defmethod ctrls-val ((m <Spline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:ctrls-val is deprecated.  Use tuw_nav_msgs-msg:ctrls instead.")
  (ctrls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Spline>) ostream)
  "Serializes a message object of type '<Spline>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'knots))))
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
   (cl:slot-value msg 'knots))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ctrls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ctrls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Spline>) istream)
  "Deserializes a message object of type '<Spline>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'knots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'knots)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ctrls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ctrls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_nav_msgs-msg:Float64Array))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Spline>)))
  "Returns string type for a message object of type '<Spline>"
  "tuw_nav_msgs/Spline")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Spline)))
  "Returns string type for a message object of type 'Spline"
  "tuw_nav_msgs/Spline")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Spline>)))
  "Returns md5sum for a message object of type '<Spline>"
  "5b00a6d2ce6d30ce3d71faff66791a89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Spline)))
  "Returns md5sum for a message object of type 'Spline"
  "5b00a6d2ce6d30ce3d71faff66791a89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Spline>)))
  "Returns full string definition for message of type '<Spline>"
  (cl:format cl:nil "Header header~%float64[] knots~%Float64Array[] ctrls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_nav_msgs/Float64Array~%float64[] val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Spline)))
  "Returns full string definition for message of type 'Spline"
  (cl:format cl:nil "Header header~%float64[] knots~%Float64Array[] ctrls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_nav_msgs/Float64Array~%float64[] val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Spline>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'knots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ctrls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Spline>))
  "Converts a ROS message object to a list"
  (cl:list 'Spline
    (cl:cons ':header (header msg))
    (cl:cons ':knots (knots msg))
    (cl:cons ':ctrls (ctrls msg))
))
