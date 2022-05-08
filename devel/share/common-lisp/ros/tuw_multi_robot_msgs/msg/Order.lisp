; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude Order.msg.html

(cl:defclass <Order> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (order_id
    :reader order_id
    :initarg :order_id
    :type cl:integer
    :initform 0)
   (order_name
    :reader order_name
    :initarg :order_name
    :type cl:string
    :initform "")
   (stations
    :reader stations
    :initarg :stations
    :type (cl:vector tuw_multi_robot_msgs-msg:Station)
   :initform (cl:make-array 0 :element-type 'tuw_multi_robot_msgs-msg:Station :initial-element (cl:make-instance 'tuw_multi_robot_msgs-msg:Station))))
)

(cl:defclass Order (<Order>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Order>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Order)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<Order> is deprecated: use tuw_multi_robot_msgs-msg:Order instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:header-val is deprecated.  Use tuw_multi_robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'order_id-val :lambda-list '(m))
(cl:defmethod order_id-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:order_id-val is deprecated.  Use tuw_multi_robot_msgs-msg:order_id instead.")
  (order_id m))

(cl:ensure-generic-function 'order_name-val :lambda-list '(m))
(cl:defmethod order_name-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:order_name-val is deprecated.  Use tuw_multi_robot_msgs-msg:order_name instead.")
  (order_name m))

(cl:ensure-generic-function 'stations-val :lambda-list '(m))
(cl:defmethod stations-val ((m <Order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:stations-val is deprecated.  Use tuw_multi_robot_msgs-msg:stations instead.")
  (stations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Order>) ostream)
  "Serializes a message object of type '<Order>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'order_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'order_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'order_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'stations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Order>) istream)
  "Deserializes a message object of type '<Order>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'order_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_multi_robot_msgs-msg:Station))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Order>)))
  "Returns string type for a message object of type '<Order>"
  "tuw_multi_robot_msgs/Order")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Order)))
  "Returns string type for a message object of type 'Order"
  "tuw_multi_robot_msgs/Order")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Order>)))
  "Returns md5sum for a message object of type '<Order>"
  "482fb916d477e45e362167df5ed6a68c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Order)))
  "Returns md5sum for a message object of type 'Order"
  "482fb916d477e45e362167df5ed6a68c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Order>)))
  "Returns full string definition for message of type '<Order>"
  (cl:format cl:nil "#################################################################~%## Good to deliver from position A to B (via intermediate ~%## positions)~%#################################################################~%~%Header                 header~%int32                  order_id~%string                 order_name~%Station[]              stations~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/Station~%#################################################################~%## Station for Robots to Drive to~%#################################################################~%~%Header                 header       # header~%int32                  id           # station ID~%string                 name         # station name~%geometry_msgs/Pose     pose         # station position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Order)))
  "Returns full string definition for message of type 'Order"
  (cl:format cl:nil "#################################################################~%## Good to deliver from position A to B (via intermediate ~%## positions)~%#################################################################~%~%Header                 header~%int32                  order_id~%string                 order_name~%Station[]              stations~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/Station~%#################################################################~%## Station for Robots to Drive to~%#################################################################~%~%Header                 header       # header~%int32                  id           # station ID~%string                 name         # station name~%geometry_msgs/Pose     pose         # station position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Order>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'order_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Order>))
  "Converts a ROS message object to a list"
  (cl:list 'Order
    (cl:cons ':header (header msg))
    (cl:cons ':order_id (order_id msg))
    (cl:cons ':order_name (order_name msg))
    (cl:cons ':stations (stations msg))
))
