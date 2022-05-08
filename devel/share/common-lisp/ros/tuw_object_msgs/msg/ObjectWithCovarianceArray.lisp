; Auto-generated. Do not edit!


(cl:in-package tuw_object_msgs-msg)


;//! \htmlinclude ObjectWithCovarianceArray.msg.html

(cl:defclass <ObjectWithCovarianceArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector tuw_object_msgs-msg:ObjectWithCovariance)
   :initform (cl:make-array 0 :element-type 'tuw_object_msgs-msg:ObjectWithCovariance :initial-element (cl:make-instance 'tuw_object_msgs-msg:ObjectWithCovariance))))
)

(cl:defclass ObjectWithCovarianceArray (<ObjectWithCovarianceArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectWithCovarianceArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectWithCovarianceArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_object_msgs-msg:<ObjectWithCovarianceArray> is deprecated: use tuw_object_msgs-msg:ObjectWithCovarianceArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectWithCovarianceArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:header-val is deprecated.  Use tuw_object_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <ObjectWithCovarianceArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:objects-val is deprecated.  Use tuw_object_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectWithCovarianceArray>) ostream)
  "Serializes a message object of type '<ObjectWithCovarianceArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectWithCovarianceArray>) istream)
  "Deserializes a message object of type '<ObjectWithCovarianceArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_object_msgs-msg:ObjectWithCovariance))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectWithCovarianceArray>)))
  "Returns string type for a message object of type '<ObjectWithCovarianceArray>"
  "tuw_object_msgs/ObjectWithCovarianceArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectWithCovarianceArray)))
  "Returns string type for a message object of type 'ObjectWithCovarianceArray"
  "tuw_object_msgs/ObjectWithCovarianceArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectWithCovarianceArray>)))
  "Returns md5sum for a message object of type '<ObjectWithCovarianceArray>"
  "328cb83ce2cea6b0398755375e512db9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectWithCovarianceArray)))
  "Returns md5sum for a message object of type 'ObjectWithCovarianceArray"
  "328cb83ce2cea6b0398755375e512db9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectWithCovarianceArray>)))
  "Returns full string definition for message of type '<ObjectWithCovarianceArray>"
  (cl:format cl:nil "# An object with covariance in a reference coordinate frame with timestamp~%Header header~%ObjectWithCovariance[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_object_msgs/ObjectWithCovariance~%# This expresses a object in free space with uncertainty.~%~%Object object~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%~%float64[] covariance_pose   # pose covariance if it exists it will be 3x3 or 6x6~%float64[] covariance_twist  # twist covariance if it exists it will be 3x3 or 6x6~%float64[] correlation       # correlation between pose and twist if it exists it will be 3x3 or 6x6~%================================================================================~%MSG: tuw_object_msgs/Object~%# This expresses a object in a 3D space~%int32[] ids                  # possible ids of the detected object (empty if no id could be identified/assigned)~%int32   shape                # shape type (possible types are listed below)~%float64[] shape_variables    # variables correspoding to the shape of the object (possible types are listed below)~%float64[] ids_confidence     # confidence of the possible ids in [0, 1]~%geometry_msgs/Pose pose      # pose of the detected object~%geometry_msgs/Twist twist    # twist of the detected object~%~%# SHAPE_TYPE                      # SHAPE_VARIABLES~%# ====================================================~%int32 SHAPE_UNKOWN           = 0  # []~%int32 SHAPE_POINT            = 1  # []~%int32 SHAPE_CIRCLE           = 2  # [radius]~%int32 SHAPE_ELLIPSE          = 3  # [radius1, radius2]~%int32 SHAPE_SQUARE           = 4  # [width]~%int32 SHAPE_RECTANGLE        = 5  # [length, width]~%int32 SHAPE_HULL             = 6  # [p0, p1, p2, ...]~%int32 SHAPE_LINE             = 7  # [] or [length] ~%~%int32 SHAPE_SPHERE           = 102~%int32 SHAPE_ELLIPSOID        = 103~%int32 SHAPE_CUBE             = 104~%int32 SHAPE_BOX              = 105~%int32 SHAPE_MESH             = 106~%~%int32 SHAPE_TRAFFIC_CONE     = 201 # [radius, color(1 = blue, 2 = yellow, 3 = red)] ~%int32 SHAPE_DOOR             = 202 # [width, height, opening angle (0=closed), nr of door leafs, clockwise (0) counterclockwise (1)]~%int32 SHAPE_MAP_DOOR         = 212 # for doors already mapped, same parameters as usual door~%int32 SHAPE_PERSON           = 203~%int32 SHAPE_VEHICLE          = 204~%int32 SHAPE_FIDUCIAL         = 205~%int32 SHAPE_CONE             = 206 # [radius, height]~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectWithCovarianceArray)))
  "Returns full string definition for message of type 'ObjectWithCovarianceArray"
  (cl:format cl:nil "# An object with covariance in a reference coordinate frame with timestamp~%Header header~%ObjectWithCovariance[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_object_msgs/ObjectWithCovariance~%# This expresses a object in free space with uncertainty.~%~%Object object~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%~%float64[] covariance_pose   # pose covariance if it exists it will be 3x3 or 6x6~%float64[] covariance_twist  # twist covariance if it exists it will be 3x3 or 6x6~%float64[] correlation       # correlation between pose and twist if it exists it will be 3x3 or 6x6~%================================================================================~%MSG: tuw_object_msgs/Object~%# This expresses a object in a 3D space~%int32[] ids                  # possible ids of the detected object (empty if no id could be identified/assigned)~%int32   shape                # shape type (possible types are listed below)~%float64[] shape_variables    # variables correspoding to the shape of the object (possible types are listed below)~%float64[] ids_confidence     # confidence of the possible ids in [0, 1]~%geometry_msgs/Pose pose      # pose of the detected object~%geometry_msgs/Twist twist    # twist of the detected object~%~%# SHAPE_TYPE                      # SHAPE_VARIABLES~%# ====================================================~%int32 SHAPE_UNKOWN           = 0  # []~%int32 SHAPE_POINT            = 1  # []~%int32 SHAPE_CIRCLE           = 2  # [radius]~%int32 SHAPE_ELLIPSE          = 3  # [radius1, radius2]~%int32 SHAPE_SQUARE           = 4  # [width]~%int32 SHAPE_RECTANGLE        = 5  # [length, width]~%int32 SHAPE_HULL             = 6  # [p0, p1, p2, ...]~%int32 SHAPE_LINE             = 7  # [] or [length] ~%~%int32 SHAPE_SPHERE           = 102~%int32 SHAPE_ELLIPSOID        = 103~%int32 SHAPE_CUBE             = 104~%int32 SHAPE_BOX              = 105~%int32 SHAPE_MESH             = 106~%~%int32 SHAPE_TRAFFIC_CONE     = 201 # [radius, color(1 = blue, 2 = yellow, 3 = red)] ~%int32 SHAPE_DOOR             = 202 # [width, height, opening angle (0=closed), nr of door leafs, clockwise (0) counterclockwise (1)]~%int32 SHAPE_MAP_DOOR         = 212 # for doors already mapped, same parameters as usual door~%int32 SHAPE_PERSON           = 203~%int32 SHAPE_VEHICLE          = 204~%int32 SHAPE_FIDUCIAL         = 205~%int32 SHAPE_CONE             = 206 # [radius, height]~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectWithCovarianceArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectWithCovarianceArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectWithCovarianceArray
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
