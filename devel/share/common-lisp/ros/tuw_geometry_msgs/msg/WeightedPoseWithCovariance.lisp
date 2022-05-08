; Auto-generated. Do not edit!


(cl:in-package tuw_geometry_msgs-msg)


;//! \htmlinclude WeightedPoseWithCovariance.msg.html

(cl:defclass <WeightedPoseWithCovariance> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0))
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0))
)

(cl:defclass WeightedPoseWithCovariance (<WeightedPoseWithCovariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeightedPoseWithCovariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeightedPoseWithCovariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_geometry_msgs-msg:<WeightedPoseWithCovariance> is deprecated: use tuw_geometry_msgs-msg:WeightedPoseWithCovariance instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <WeightedPoseWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_geometry_msgs-msg:pose-val is deprecated.  Use tuw_geometry_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <WeightedPoseWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_geometry_msgs-msg:covariance-val is deprecated.  Use tuw_geometry_msgs-msg:covariance instead.")
  (covariance m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <WeightedPoseWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_geometry_msgs-msg:weight-val is deprecated.  Use tuw_geometry_msgs-msg:weight instead.")
  (weight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeightedPoseWithCovariance>) ostream)
  "Serializes a message object of type '<WeightedPoseWithCovariance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeightedPoseWithCovariance>) istream)
  "Deserializes a message object of type '<WeightedPoseWithCovariance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 36))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i 36)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeightedPoseWithCovariance>)))
  "Returns string type for a message object of type '<WeightedPoseWithCovariance>"
  "tuw_geometry_msgs/WeightedPoseWithCovariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeightedPoseWithCovariance)))
  "Returns string type for a message object of type 'WeightedPoseWithCovariance"
  "tuw_geometry_msgs/WeightedPoseWithCovariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeightedPoseWithCovariance>)))
  "Returns md5sum for a message object of type '<WeightedPoseWithCovariance>"
  "48c0d78e262fa72b14e49d79a40893ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeightedPoseWithCovariance)))
  "Returns md5sum for a message object of type 'WeightedPoseWithCovariance"
  "48c0d78e262fa72b14e49d79a40893ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeightedPoseWithCovariance>)))
  "Returns full string definition for message of type '<WeightedPoseWithCovariance>"
  (cl:format cl:nil "# This represents a pose in free space with uncertainty and a scoring weight.~%~%geometry_msgs/Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%# [0, 1] weight of the pose, used for scoring a pose particle~%float64 weight~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeightedPoseWithCovariance)))
  "Returns full string definition for message of type 'WeightedPoseWithCovariance"
  (cl:format cl:nil "# This represents a pose in free space with uncertainty and a scoring weight.~%~%geometry_msgs/Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%# [0, 1] weight of the pose, used for scoring a pose particle~%float64 weight~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeightedPoseWithCovariance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeightedPoseWithCovariance>))
  "Converts a ROS message object to a list"
  (cl:list 'WeightedPoseWithCovariance
    (cl:cons ':pose (pose msg))
    (cl:cons ':covariance (covariance msg))
    (cl:cons ':weight (weight msg))
))
