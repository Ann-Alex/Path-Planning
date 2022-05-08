; Auto-generated. Do not edit!


(cl:in-package tuw_nav_msgs-msg)


;//! \htmlinclude RouteSegment.msg.html

(cl:defclass <RouteSegment> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:fixnum
    :initform 0)
   (motion_type
    :reader motion_type
    :initarg :motion_type
    :type cl:fixnum
    :initform 0)
   (start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (end
    :reader end
    :initarg :end
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (center
    :reader center
    :initarg :center
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RouteSegment (<RouteSegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RouteSegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RouteSegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_nav_msgs-msg:<RouteSegment> is deprecated: use tuw_nav_msgs-msg:RouteSegment instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:id-val is deprecated.  Use tuw_nav_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:type-val is deprecated.  Use tuw_nav_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:orientation-val is deprecated.  Use tuw_nav_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'motion_type-val :lambda-list '(m))
(cl:defmethod motion_type-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:motion_type-val is deprecated.  Use tuw_nav_msgs-msg:motion_type instead.")
  (motion_type m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:start-val is deprecated.  Use tuw_nav_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:end-val is deprecated.  Use tuw_nav_msgs-msg:end instead.")
  (end m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:center-val is deprecated.  Use tuw_nav_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_nav_msgs-msg:level-val is deprecated.  Use tuw_nav_msgs-msg:level instead.")
  (level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RouteSegment>) ostream)
  "Serializes a message object of type '<RouteSegment>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (cl:let* ((signed (cl:slot-value msg 'level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RouteSegment>) istream)
  "Deserializes a message object of type '<RouteSegment>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RouteSegment>)))
  "Returns string type for a message object of type '<RouteSegment>"
  "tuw_nav_msgs/RouteSegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RouteSegment)))
  "Returns string type for a message object of type 'RouteSegment"
  "tuw_nav_msgs/RouteSegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RouteSegment>)))
  "Returns md5sum for a message object of type '<RouteSegment>"
  "26469c8984f3cdfc24371244c703f828")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RouteSegment)))
  "Returns md5sum for a message object of type 'RouteSegment"
  "26469c8984f3cdfc24371244c703f828")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RouteSegment>)))
  "Returns full string definition for message of type '<RouteSegment>"
  (cl:format cl:nil "~%uint32 id                     # Segment id~%uint8 type                    # Segment type~%                              # NA      = 0~%                              # LINE    = 1~%                              # ARC     = 2~%                              # SPIROS  = 3~%                              # SPLINE  = 4~%uint8 orientation             # Segment orientation~%                              # CLOCKWISE  = 0~%                              # COUNTER_CLOCKWISE  = 1~%uint8 motion_type             # Motion type~%                              # NA = 0~%                              # FLAT = 1~%                              # DWA_SLOW = 2~%                              # DWA_FAST = 3~%                              # MPC_SLOW = 4~%                              # MPC_FAST = 5~%                              # PI_SLOW = 6~%                              # PI_FAST = 7~%geometry_msgs/Pose start~%geometry_msgs/Pose end~%geometry_msgs/Pose center    ~%int8 level~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RouteSegment)))
  "Returns full string definition for message of type 'RouteSegment"
  (cl:format cl:nil "~%uint32 id                     # Segment id~%uint8 type                    # Segment type~%                              # NA      = 0~%                              # LINE    = 1~%                              # ARC     = 2~%                              # SPIROS  = 3~%                              # SPLINE  = 4~%uint8 orientation             # Segment orientation~%                              # CLOCKWISE  = 0~%                              # COUNTER_CLOCKWISE  = 1~%uint8 motion_type             # Motion type~%                              # NA = 0~%                              # FLAT = 1~%                              # DWA_SLOW = 2~%                              # DWA_FAST = 3~%                              # MPC_SLOW = 4~%                              # MPC_FAST = 5~%                              # PI_SLOW = 6~%                              # PI_FAST = 7~%geometry_msgs/Pose start~%geometry_msgs/Pose end~%geometry_msgs/Pose center    ~%int8 level~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RouteSegment>))
  (cl:+ 0
     4
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RouteSegment>))
  "Converts a ROS message object to a list"
  (cl:list 'RouteSegment
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':motion_type (motion_type msg))
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
    (cl:cons ':center (center msg))
    (cl:cons ':level (level msg))
))
