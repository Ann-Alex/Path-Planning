; Auto-generated. Do not edit!


(cl:in-package tuw_geometry_msgs-msg)


;//! \htmlinclude WeightedPoseWithCovarianceArray.msg.html

(cl:defclass <WeightedPoseWithCovarianceArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector tuw_geometry_msgs-msg:WeightedPoseWithCovariance)
   :initform (cl:make-array 0 :element-type 'tuw_geometry_msgs-msg:WeightedPoseWithCovariance :initial-element (cl:make-instance 'tuw_geometry_msgs-msg:WeightedPoseWithCovariance))))
)

(cl:defclass WeightedPoseWithCovarianceArray (<WeightedPoseWithCovarianceArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeightedPoseWithCovarianceArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeightedPoseWithCovarianceArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_geometry_msgs-msg:<WeightedPoseWithCovarianceArray> is deprecated: use tuw_geometry_msgs-msg:WeightedPoseWithCovarianceArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WeightedPoseWithCovarianceArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_geometry_msgs-msg:header-val is deprecated.  Use tuw_geometry_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <WeightedPoseWithCovarianceArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_geometry_msgs-msg:poses-val is deprecated.  Use tuw_geometry_msgs-msg:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeightedPoseWithCovarianceArray>) ostream)
  "Serializes a message object of type '<WeightedPoseWithCovarianceArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeightedPoseWithCovarianceArray>) istream)
  "Deserializes a message object of type '<WeightedPoseWithCovarianceArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_geometry_msgs-msg:WeightedPoseWithCovariance))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeightedPoseWithCovarianceArray>)))
  "Returns string type for a message object of type '<WeightedPoseWithCovarianceArray>"
  "tuw_geometry_msgs/WeightedPoseWithCovarianceArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeightedPoseWithCovarianceArray)))
  "Returns string type for a message object of type 'WeightedPoseWithCovarianceArray"
  "tuw_geometry_msgs/WeightedPoseWithCovarianceArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeightedPoseWithCovarianceArray>)))
  "Returns md5sum for a message object of type '<WeightedPoseWithCovarianceArray>"
  "f611e94fdb32f52eaee4a5137d1fa202")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeightedPoseWithCovarianceArray)))
  "Returns md5sum for a message object of type 'WeightedPoseWithCovarianceArray"
  "f611e94fdb32f52eaee4a5137d1fa202")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeightedPoseWithCovarianceArray>)))
  "Returns full string definition for message of type '<WeightedPoseWithCovarianceArray>"
  (cl:format cl:nil "Header header~%~%WeightedPoseWithCovariance[] poses~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_geometry_msgs/WeightedPoseWithCovariance~%# This represents a pose in free space with uncertainty and a scoring weight.~%~%geometry_msgs/Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%# [0, 1] weight of the pose, used for scoring a pose particle~%float64 weight~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeightedPoseWithCovarianceArray)))
  "Returns full string definition for message of type 'WeightedPoseWithCovarianceArray"
  (cl:format cl:nil "Header header~%~%WeightedPoseWithCovariance[] poses~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_geometry_msgs/WeightedPoseWithCovariance~%# This represents a pose in free space with uncertainty and a scoring weight.~%~%geometry_msgs/Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%# [0, 1] weight of the pose, used for scoring a pose particle~%float64 weight~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeightedPoseWithCovarianceArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeightedPoseWithCovarianceArray>))
  "Converts a ROS message object to a list"
  (cl:list 'WeightedPoseWithCovarianceArray
    (cl:cons ':header (header msg))
    (cl:cons ':poses (poses msg))
))
