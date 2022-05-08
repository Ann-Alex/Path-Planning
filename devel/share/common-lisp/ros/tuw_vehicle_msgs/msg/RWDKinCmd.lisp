; Auto-generated. Do not edit!


(cl:in-package tuw_vehicle_msgs-msg)


;//! \htmlinclude RWDKinCmd.msg.html

(cl:defclass <RWDKinCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (front_center_wheel_angle
    :reader front_center_wheel_angle
    :initarg :front_center_wheel_angle
    :type cl:float
    :initform 0.0)
   (brake_pressure
    :reader brake_pressure
    :initarg :brake_pressure
    :type cl:float
    :initform 0.0))
)

(cl:defclass RWDKinCmd (<RWDKinCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RWDKinCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RWDKinCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_vehicle_msgs-msg:<RWDKinCmd> is deprecated: use tuw_vehicle_msgs-msg:RWDKinCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RWDKinCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:header-val is deprecated.  Use tuw_vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <RWDKinCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:vel-val is deprecated.  Use tuw_vehicle_msgs-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'front_center_wheel_angle-val :lambda-list '(m))
(cl:defmethod front_center_wheel_angle-val ((m <RWDKinCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:front_center_wheel_angle-val is deprecated.  Use tuw_vehicle_msgs-msg:front_center_wheel_angle instead.")
  (front_center_wheel_angle m))

(cl:ensure-generic-function 'brake_pressure-val :lambda-list '(m))
(cl:defmethod brake_pressure-val ((m <RWDKinCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:brake_pressure-val is deprecated.  Use tuw_vehicle_msgs-msg:brake_pressure instead.")
  (brake_pressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RWDKinCmd>) ostream)
  "Serializes a message object of type '<RWDKinCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_center_wheel_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake_pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RWDKinCmd>) istream)
  "Deserializes a message object of type '<RWDKinCmd>"
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
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_center_wheel_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_pressure) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RWDKinCmd>)))
  "Returns string type for a message object of type '<RWDKinCmd>"
  "tuw_vehicle_msgs/RWDKinCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RWDKinCmd)))
  "Returns string type for a message object of type 'RWDKinCmd"
  "tuw_vehicle_msgs/RWDKinCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RWDKinCmd>)))
  "Returns md5sum for a message object of type '<RWDKinCmd>"
  "a9dacac9c5016e81b75002abe61b3ee0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RWDKinCmd)))
  "Returns md5sum for a message object of type 'RWDKinCmd"
  "a9dacac9c5016e81b75002abe61b3ee0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RWDKinCmd>)))
  "Returns full string definition for message of type '<RWDKinCmd>"
  (cl:format cl:nil "Header header~%~%# requested speed on the center of the rear axis [m/s]~%float64 vel~%~%# requested steering angle of the imaginary wheel at the center of the front axis [degrees]~%float64 front_center_wheel_angle~%~%# requested brake pressure for the system in bar measured at the front brake circuit~%# if > 0, vel is being overriden and 0-torque is applied on the motors~%float64 brake_pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RWDKinCmd)))
  "Returns full string definition for message of type 'RWDKinCmd"
  (cl:format cl:nil "Header header~%~%# requested speed on the center of the rear axis [m/s]~%float64 vel~%~%# requested steering angle of the imaginary wheel at the center of the front axis [degrees]~%float64 front_center_wheel_angle~%~%# requested brake pressure for the system in bar measured at the front brake circuit~%# if > 0, vel is being overriden and 0-torque is applied on the motors~%float64 brake_pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RWDKinCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RWDKinCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'RWDKinCmd
    (cl:cons ':header (header msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':front_center_wheel_angle (front_center_wheel_angle msg))
    (cl:cons ':brake_pressure (brake_pressure msg))
))
