; Auto-generated. Do not edit!


(cl:in-package tuw_vehicle_msgs-msg)


;//! \htmlinclude AutonomousState.msg.html

(cl:defclass <AutonomousState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (mission
    :reader mission
    :initarg :mission
    :type cl:fixnum
    :initform 0)
   (failed_systems
    :reader failed_systems
    :initarg :failed_systems
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass AutonomousState (<AutonomousState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutonomousState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutonomousState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_vehicle_msgs-msg:<AutonomousState> is deprecated: use tuw_vehicle_msgs-msg:AutonomousState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AutonomousState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:header-val is deprecated.  Use tuw_vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <AutonomousState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:state-val is deprecated.  Use tuw_vehicle_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'mission-val :lambda-list '(m))
(cl:defmethod mission-val ((m <AutonomousState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:mission-val is deprecated.  Use tuw_vehicle_msgs-msg:mission instead.")
  (mission m))

(cl:ensure-generic-function 'failed_systems-val :lambda-list '(m))
(cl:defmethod failed_systems-val ((m <AutonomousState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:failed_systems-val is deprecated.  Use tuw_vehicle_msgs-msg:failed_systems instead.")
  (failed_systems m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutonomousState>)))
    "Constants for message type '<AutonomousState>"
  '((:MISSION_NONE . 1)
    (:MISSION_BRAKE_TEST . 2)
    (:MISSION_ACCELERATION . 3)
    (:MISSION_SKIDPAD . 4)
    (:MISSION_TRACKDRIVE . 5)
    (:MISSION_TEST . 6)
    (:MISSION_JACKED_UP_STEERING . 100)
    (:STATE_OFF . 1)
    (:STATE_READY . 2)
    (:STATE_ACTIVE . 3)
    (:STATE_EBS . 4)
    (:STATE_FINISHED . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutonomousState)))
    "Constants for message type 'AutonomousState"
  '((:MISSION_NONE . 1)
    (:MISSION_BRAKE_TEST . 2)
    (:MISSION_ACCELERATION . 3)
    (:MISSION_SKIDPAD . 4)
    (:MISSION_TRACKDRIVE . 5)
    (:MISSION_TEST . 6)
    (:MISSION_JACKED_UP_STEERING . 100)
    (:STATE_OFF . 1)
    (:STATE_READY . 2)
    (:STATE_ACTIVE . 3)
    (:STATE_EBS . 4)
    (:STATE_FINISHED . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutonomousState>) ostream)
  "Serializes a message object of type '<AutonomousState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'failed_systems))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'failed_systems))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutonomousState>) istream)
  "Deserializes a message object of type '<AutonomousState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'failed_systems) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'failed_systems)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutonomousState>)))
  "Returns string type for a message object of type '<AutonomousState>"
  "tuw_vehicle_msgs/AutonomousState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutonomousState)))
  "Returns string type for a message object of type 'AutonomousState"
  "tuw_vehicle_msgs/AutonomousState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutonomousState>)))
  "Returns md5sum for a message object of type '<AutonomousState>"
  "d70f585dba7442399f4beebf01ac24b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutonomousState)))
  "Returns md5sum for a message object of type 'AutonomousState"
  "d70f585dba7442399f4beebf01ac24b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutonomousState>)))
  "Returns full string definition for message of type '<AutonomousState>"
  (cl:format cl:nil "Header header~%~%uint8 MISSION_NONE=1~%uint8 MISSION_BRAKE_TEST=2~%uint8 MISSION_ACCELERATION=3~%uint8 MISSION_SKIDPAD=4~%uint8 MISSION_TRACKDRIVE=5~%uint8 MISSION_TEST=6~%~%# mission to test correct heading of the vehicle while jacked up~%# the front wheels should align between the next cones seen by the vehicle~%uint8 MISSION_JACKED_UP_STEERING=100~%~%uint8 STATE_OFF=1~%uint8 STATE_READY=2~%uint8 STATE_ACTIVE=3~%uint8 STATE_EBS=4~%uint8 STATE_FINISHED=5~%~%uint8 state~%uint8 mission~%uint8[] failed_systems~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutonomousState)))
  "Returns full string definition for message of type 'AutonomousState"
  (cl:format cl:nil "Header header~%~%uint8 MISSION_NONE=1~%uint8 MISSION_BRAKE_TEST=2~%uint8 MISSION_ACCELERATION=3~%uint8 MISSION_SKIDPAD=4~%uint8 MISSION_TRACKDRIVE=5~%uint8 MISSION_TEST=6~%~%# mission to test correct heading of the vehicle while jacked up~%# the front wheels should align between the next cones seen by the vehicle~%uint8 MISSION_JACKED_UP_STEERING=100~%~%uint8 STATE_OFF=1~%uint8 STATE_READY=2~%uint8 STATE_ACTIVE=3~%uint8 STATE_EBS=4~%uint8 STATE_FINISHED=5~%~%uint8 state~%uint8 mission~%uint8[] failed_systems~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutonomousState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'failed_systems) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutonomousState>))
  "Converts a ROS message object to a list"
  (cl:list 'AutonomousState
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':mission (mission msg))
    (cl:cons ':failed_systems (failed_systems msg))
))
