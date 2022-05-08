; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude RobotInfo.msg.html

(cl:defclass <RobotInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (shape
    :reader shape
    :initarg :shape
    :type cl:integer
    :initform 0)
   (shape_variables
    :reader shape_variables
    :initarg :shape_variables
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (sync
    :reader sync
    :initarg :sync
    :type tuw_multi_robot_msgs-msg:RoutePrecondition
    :initform (cl:make-instance 'tuw_multi_robot_msgs-msg:RoutePrecondition))
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (good_id
    :reader good_id
    :initarg :good_id
    :type cl:integer
    :initform 0)
   (order_id
    :reader order_id
    :initarg :order_id
    :type cl:integer
    :initform 0)
   (order_status
    :reader order_status
    :initarg :order_status
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotInfo (<RobotInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<RobotInfo> is deprecated: use tuw_multi_robot_msgs-msg:RobotInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:header-val is deprecated.  Use tuw_multi_robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:robot_name-val is deprecated.  Use tuw_multi_robot_msgs-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:pose-val is deprecated.  Use tuw_multi_robot_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:shape-val is deprecated.  Use tuw_multi_robot_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'shape_variables-val :lambda-list '(m))
(cl:defmethod shape_variables-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:shape_variables-val is deprecated.  Use tuw_multi_robot_msgs-msg:shape_variables instead.")
  (shape_variables m))

(cl:ensure-generic-function 'sync-val :lambda-list '(m))
(cl:defmethod sync-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:sync-val is deprecated.  Use tuw_multi_robot_msgs-msg:sync instead.")
  (sync m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:mode-val is deprecated.  Use tuw_multi_robot_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:status-val is deprecated.  Use tuw_multi_robot_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'good_id-val :lambda-list '(m))
(cl:defmethod good_id-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:good_id-val is deprecated.  Use tuw_multi_robot_msgs-msg:good_id instead.")
  (good_id m))

(cl:ensure-generic-function 'order_id-val :lambda-list '(m))
(cl:defmethod order_id-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:order_id-val is deprecated.  Use tuw_multi_robot_msgs-msg:order_id instead.")
  (order_id m))

(cl:ensure-generic-function 'order_status-val :lambda-list '(m))
(cl:defmethod order_status-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:order_status-val is deprecated.  Use tuw_multi_robot_msgs-msg:order_status instead.")
  (order_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotInfo>)))
    "Constants for message type '<RobotInfo>"
  '((:MODE_NA . 0)
    (:MODE_IDLE . 1)
    (:MODE_SEGMENT_FOLLOWING . 2)
    (:MODE_PICKUP . 3)
    (:STATUS_DRIVING . 0)
    (:STATUS_STOPPED . 1)
    (:STATUS_DONE . 2)
    (:STATUS_BROKEN . 3)
    (:GOOD_EMPTY . -1)
    (:GOOD_NA . -2)
    (:SHAPE_CIRCLE . 0)
    (:ORDER_NONE . 0)
    (:ORDER_APPROACH . 1)
    (:ORDER_PICKUP . 2)
    (:ORDER_TRANSPORT . 3)
    (:ORDER_DROP . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotInfo)))
    "Constants for message type 'RobotInfo"
  '((:MODE_NA . 0)
    (:MODE_IDLE . 1)
    (:MODE_SEGMENT_FOLLOWING . 2)
    (:MODE_PICKUP . 3)
    (:STATUS_DRIVING . 0)
    (:STATUS_STOPPED . 1)
    (:STATUS_DONE . 2)
    (:STATUS_BROKEN . 3)
    (:GOOD_EMPTY . -1)
    (:GOOD_NA . -2)
    (:SHAPE_CIRCLE . 0)
    (:ORDER_NONE . 0)
    (:ORDER_APPROACH . 1)
    (:ORDER_PICKUP . 2)
    (:ORDER_TRANSPORT . 3)
    (:ORDER_DROP . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotInfo>) ostream)
  "Serializes a message object of type '<RobotInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let* ((signed (cl:slot-value msg 'shape)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_variables))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'shape_variables))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sync) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'good_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'order_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'order_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotInfo>) istream)
  "Deserializes a message object of type '<RobotInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shape) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape_variables) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_variables)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sync) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'good_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotInfo>)))
  "Returns string type for a message object of type '<RobotInfo>"
  "tuw_multi_robot_msgs/RobotInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotInfo)))
  "Returns string type for a message object of type 'RobotInfo"
  "tuw_multi_robot_msgs/RobotInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotInfo>)))
  "Returns md5sum for a message object of type '<RobotInfo>"
  "305fb15e717f7fc9b8a810ea72ac87ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotInfo)))
  "Returns md5sum for a message object of type 'RobotInfo"
  "305fb15e717f7fc9b8a810ea72ac87ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotInfo>)))
  "Returns full string definition for message of type '<RobotInfo>"
  (cl:format cl:nil "#################################################################~%## Presents dynamic parameters of a robot~%#################################################################~%~%Header header                            # the creation time~%string robot_name                        # the name of the robot (used in preconditions and topics)~%geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header~%int32 shape                              # the shape of the robots (see enums)~%float32[] shape_variables                # shape variables to define width height, ...~%RoutePrecondition sync                   # the current position in the last received plan (-1 means none)~%int32   mode                             # the mode of operation~%int32   status                           # the status of the robot~%int32   good_id                          # the good id attached to the robot~%int32   order_id                         # the order id scheduled to this robot (-1: none)~%int32   order_status                     # the status of the assigned order~%~%# mode~%int32 MODE_NA = 0                   # undefined mode~%int32 MODE_IDLE = 1                 # robot is idle~%int32 MODE_SEGMENT_FOLLOWING = 2    # robot is in mode segment following~%int32 MODE_PICKUP = 3               # robot is picking up goods~%~%# status~%int32 STATUS_DRIVING = 0            # robot is driving~%int32 STATUS_STOPPED = 1            # robot has stopped~%int32 STATUS_DONE = 2               # robot has finished its last job~%int32 STATUS_BROKEN = 3             # robot is broken and not ready for any task~%~%# good_id~%int32 GOOD_EMPTY = -1               # no goods attached~%int32 GOOD_NA = -2                  # undefined good~%~%# shape~%int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars~%~%# order_status~%int32 ORDER_NONE = 0                # no order assigned~%int32 ORDER_APPROACH = 1            # the robot approaches the first station of the order~%int32 ORDER_PICKUP = 2              # the robot picks up a good at the station~%int32 ORDER_TRANSPORT = 3           # the robot currently transports a good from one station to another~%int32 ORDER_DROP = 4                # the robot drops a good at the last station of its order, finishing the order~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route ~%## with such a message~%## The specific segments of a route are marked with such ~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right ~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition ~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotInfo)))
  "Returns full string definition for message of type 'RobotInfo"
  (cl:format cl:nil "#################################################################~%## Presents dynamic parameters of a robot~%#################################################################~%~%Header header                            # the creation time~%string robot_name                        # the name of the robot (used in preconditions and topics)~%geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header~%int32 shape                              # the shape of the robots (see enums)~%float32[] shape_variables                # shape variables to define width height, ...~%RoutePrecondition sync                   # the current position in the last received plan (-1 means none)~%int32   mode                             # the mode of operation~%int32   status                           # the status of the robot~%int32   good_id                          # the good id attached to the robot~%int32   order_id                         # the order id scheduled to this robot (-1: none)~%int32   order_status                     # the status of the assigned order~%~%# mode~%int32 MODE_NA = 0                   # undefined mode~%int32 MODE_IDLE = 1                 # robot is idle~%int32 MODE_SEGMENT_FOLLOWING = 2    # robot is in mode segment following~%int32 MODE_PICKUP = 3               # robot is picking up goods~%~%# status~%int32 STATUS_DRIVING = 0            # robot is driving~%int32 STATUS_STOPPED = 1            # robot has stopped~%int32 STATUS_DONE = 2               # robot has finished its last job~%int32 STATUS_BROKEN = 3             # robot is broken and not ready for any task~%~%# good_id~%int32 GOOD_EMPTY = -1               # no goods attached~%int32 GOOD_NA = -2                  # undefined good~%~%# shape~%int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars~%~%# order_status~%int32 ORDER_NONE = 0                # no order assigned~%int32 ORDER_APPROACH = 1            # the robot approaches the first station of the order~%int32 ORDER_PICKUP = 2              # the robot picks up a good at the station~%int32 ORDER_TRANSPORT = 3           # the robot currently transports a good from one station to another~%int32 ORDER_DROP = 4                # the robot drops a good at the last station of its order, finishing the order~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route ~%## with such a message~%## The specific segments of a route are marked with such ~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right ~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition ~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'robot_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_variables) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sync))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotInfo
    (cl:cons ':header (header msg))
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':shape (shape msg))
    (cl:cons ':shape_variables (shape_variables msg))
    (cl:cons ':sync (sync msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':status (status msg))
    (cl:cons ':good_id (good_id msg))
    (cl:cons ':order_id (order_id msg))
    (cl:cons ':order_status (order_status msg))
))
