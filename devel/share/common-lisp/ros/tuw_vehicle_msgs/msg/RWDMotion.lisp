; Auto-generated. Do not edit!


(cl:in-package tuw_vehicle_msgs-msg)


;//! \htmlinclude RWDMotion.msg.html

(cl:defclass <RWDMotion> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x_vel
    :reader x_vel
    :initarg :x_vel
    :type cl:float
    :initform 0.0)
   (y_vel
    :reader y_vel
    :initarg :y_vel
    :type cl:float
    :initform 0.0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0)
   (roll_rate
    :reader roll_rate
    :initarg :roll_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass RWDMotion (<RWDMotion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RWDMotion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RWDMotion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_vehicle_msgs-msg:<RWDMotion> is deprecated: use tuw_vehicle_msgs-msg:RWDMotion instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RWDMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:header-val is deprecated.  Use tuw_vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x_vel-val :lambda-list '(m))
(cl:defmethod x_vel-val ((m <RWDMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:x_vel-val is deprecated.  Use tuw_vehicle_msgs-msg:x_vel instead.")
  (x_vel m))

(cl:ensure-generic-function 'y_vel-val :lambda-list '(m))
(cl:defmethod y_vel-val ((m <RWDMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:y_vel-val is deprecated.  Use tuw_vehicle_msgs-msg:y_vel instead.")
  (y_vel m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <RWDMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:yaw_rate-val is deprecated.  Use tuw_vehicle_msgs-msg:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'roll_rate-val :lambda-list '(m))
(cl:defmethod roll_rate-val ((m <RWDMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:roll_rate-val is deprecated.  Use tuw_vehicle_msgs-msg:roll_rate instead.")
  (roll_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RWDMotion>) ostream)
  "Serializes a message object of type '<RWDMotion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'roll_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RWDMotion>) istream)
  "Deserializes a message object of type '<RWDMotion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_rate) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RWDMotion>)))
  "Returns string type for a message object of type '<RWDMotion>"
  "tuw_vehicle_msgs/RWDMotion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RWDMotion)))
  "Returns string type for a message object of type 'RWDMotion"
  "tuw_vehicle_msgs/RWDMotion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RWDMotion>)))
  "Returns md5sum for a message object of type '<RWDMotion>"
  "8c19313c75b199649c626db68589a3e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RWDMotion)))
  "Returns md5sum for a message object of type 'RWDMotion"
  "8c19313c75b199649c626db68589a3e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RWDMotion>)))
  "Returns full string definition for message of type '<RWDMotion>"
  (cl:format cl:nil "Header header~%# velocity in x-direction in m/s~%float64 x_vel~%# velocity in y-direction in m/s~%float64 y_vel~%# yaw rate in deg/s~%float64 yaw_rate~%# roll rate in deg/s~%float64 roll_rate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RWDMotion)))
  "Returns full string definition for message of type 'RWDMotion"
  (cl:format cl:nil "Header header~%# velocity in x-direction in m/s~%float64 x_vel~%# velocity in y-direction in m/s~%float64 y_vel~%# yaw rate in deg/s~%float64 yaw_rate~%# roll rate in deg/s~%float64 roll_rate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RWDMotion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RWDMotion>))
  "Converts a ROS message object to a list"
  (cl:list 'RWDMotion
    (cl:cons ':header (header msg))
    (cl:cons ':x_vel (x_vel msg))
    (cl:cons ':y_vel (y_vel msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':roll_rate (roll_rate msg))
))
