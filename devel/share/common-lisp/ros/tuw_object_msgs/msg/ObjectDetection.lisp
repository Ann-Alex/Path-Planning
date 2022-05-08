; Auto-generated. Do not edit!


(cl:in-package tuw_object_msgs-msg)


;//! \htmlinclude ObjectDetection.msg.html

(cl:defclass <ObjectDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (distance_min
    :reader distance_min
    :initarg :distance_min
    :type cl:float
    :initform 0.0)
   (distance_max
    :reader distance_max
    :initarg :distance_max
    :type cl:float
    :initform 0.0)
   (distance_max_id
    :reader distance_max_id
    :initarg :distance_max_id
    :type cl:float
    :initform 0.0)
   (view_direction
    :reader view_direction
    :initarg :view_direction
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (fov_horizontal
    :reader fov_horizontal
    :initarg :fov_horizontal
    :type cl:float
    :initform 0.0)
   (fov_vertical
    :reader fov_vertical
    :initarg :fov_vertical
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector tuw_object_msgs-msg:ObjectWithCovariance)
   :initform (cl:make-array 0 :element-type 'tuw_object_msgs-msg:ObjectWithCovariance :initial-element (cl:make-instance 'tuw_object_msgs-msg:ObjectWithCovariance)))
   (sensor_type
    :reader sensor_type
    :initarg :sensor_type
    :type cl:string
    :initform ""))
)

(cl:defclass ObjectDetection (<ObjectDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_object_msgs-msg:<ObjectDetection> is deprecated: use tuw_object_msgs-msg:ObjectDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:header-val is deprecated.  Use tuw_object_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'distance_min-val :lambda-list '(m))
(cl:defmethod distance_min-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:distance_min-val is deprecated.  Use tuw_object_msgs-msg:distance_min instead.")
  (distance_min m))

(cl:ensure-generic-function 'distance_max-val :lambda-list '(m))
(cl:defmethod distance_max-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:distance_max-val is deprecated.  Use tuw_object_msgs-msg:distance_max instead.")
  (distance_max m))

(cl:ensure-generic-function 'distance_max_id-val :lambda-list '(m))
(cl:defmethod distance_max_id-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:distance_max_id-val is deprecated.  Use tuw_object_msgs-msg:distance_max_id instead.")
  (distance_max_id m))

(cl:ensure-generic-function 'view_direction-val :lambda-list '(m))
(cl:defmethod view_direction-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:view_direction-val is deprecated.  Use tuw_object_msgs-msg:view_direction instead.")
  (view_direction m))

(cl:ensure-generic-function 'fov_horizontal-val :lambda-list '(m))
(cl:defmethod fov_horizontal-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:fov_horizontal-val is deprecated.  Use tuw_object_msgs-msg:fov_horizontal instead.")
  (fov_horizontal m))

(cl:ensure-generic-function 'fov_vertical-val :lambda-list '(m))
(cl:defmethod fov_vertical-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:fov_vertical-val is deprecated.  Use tuw_object_msgs-msg:fov_vertical instead.")
  (fov_vertical m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:type-val is deprecated.  Use tuw_object_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:objects-val is deprecated.  Use tuw_object_msgs-msg:objects instead.")
  (objects m))

(cl:ensure-generic-function 'sensor_type-val :lambda-list '(m))
(cl:defmethod sensor_type-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_object_msgs-msg:sensor_type-val is deprecated.  Use tuw_object_msgs-msg:sensor_type instead.")
  (sensor_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectDetection>)))
    "Constants for message type '<ObjectDetection>"
  '((:OBJECT_TYPE_PERSON . "person")
    (:OBJECT_TYPE_OBSTACLE . "obstacle")
    (:OBJECT_TYPE_TRAFFIC_CONE . "traffic_cone")
    (:OBJECT_TYPE_DOOR . "door")
    (:SENSOR_TYPE_GENERIC_LASER_2D . "laser2d")
    (:SENSOR_TYPE_GENERIC_LASER_3D . "laser3d")
    (:SENSOR_TYPE_GENERIC_MONOCULAR_VISION . "mono")
    (:SENSOR_TYPE_GENERIC_STEREO_VISION . "stereo")
    (:SENSOR_TYPE_GENERIC_RGBD . "rgbd"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectDetection)))
    "Constants for message type 'ObjectDetection"
  '((:OBJECT_TYPE_PERSON . "person")
    (:OBJECT_TYPE_OBSTACLE . "obstacle")
    (:OBJECT_TYPE_TRAFFIC_CONE . "traffic_cone")
    (:OBJECT_TYPE_DOOR . "door")
    (:SENSOR_TYPE_GENERIC_LASER_2D . "laser2d")
    (:SENSOR_TYPE_GENERIC_LASER_3D . "laser3d")
    (:SENSOR_TYPE_GENERIC_MONOCULAR_VISION . "mono")
    (:SENSOR_TYPE_GENERIC_STEREO_VISION . "stereo")
    (:SENSOR_TYPE_GENERIC_RGBD . "rgbd"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectDetection>) ostream)
  "Serializes a message object of type '<ObjectDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_max_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'view_direction) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fov_horizontal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fov_vertical))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectDetection>) istream)
  "Deserializes a message object of type '<ObjectDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_max) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_max_id) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'view_direction) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fov_horizontal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fov_vertical) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectDetection>)))
  "Returns string type for a message object of type '<ObjectDetection>"
  "tuw_object_msgs/ObjectDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectDetection)))
  "Returns string type for a message object of type 'ObjectDetection"
  "tuw_object_msgs/ObjectDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectDetection>)))
  "Returns md5sum for a message object of type '<ObjectDetection>"
  "cea12636c449cb6bd42fd7019d49b395")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectDetection)))
  "Returns md5sum for a message object of type 'ObjectDetection"
  "cea12636c449cb6bd42fd7019d49b395")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectDetection>)))
  "Returns full string definition for message of type '<ObjectDetection>"
  (cl:format cl:nil "# This expresses a object detection~%Header header                                 # timestamp in the header is the acquisition time and frame~%~%float32 distance_min                          # distance minimum range value [m]~%float32 distance_max                          # distance maximum range value [m]~%float32 distance_max_id                       # distance maximum range value to detect id [m]~%~%geometry_msgs/Quaternion view_direction       # view direction~%float32 fov_horizontal                        # field of view horizontal [rad]~%float32 fov_vertical                          # field of view vertical [rad]~%~%string   type                                 # object type used (person, obstacle, ...)~%~%ObjectWithCovariance[] objects                # detected objects (with covariance)~%~%string          sensor_type                      # Sensor / detector type, see example constants below.~%~%# object type constants~%string OBJECT_TYPE_PERSON = person~%string OBJECT_TYPE_OBSTACLE = obstacle~%string OBJECT_TYPE_TRAFFIC_CONE = traffic_cone~%string OBJECT_TYPE_DOOR = door~%~%# sensor type constants~%string          SENSOR_TYPE_GENERIC_LASER_2D = laser2d~%string          SENSOR_TYPE_GENERIC_LASER_3D = laser3d~%string          SENSOR_TYPE_GENERIC_MONOCULAR_VISION = mono~%string          SENSOR_TYPE_GENERIC_STEREO_VISION = stereo~%string          SENSOR_TYPE_GENERIC_RGBD = rgbd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tuw_object_msgs/ObjectWithCovariance~%# This expresses a object in free space with uncertainty.~%~%Object object~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%~%float64[] covariance_pose   # pose covariance if it exists it will be 3x3 or 6x6~%float64[] covariance_twist  # twist covariance if it exists it will be 3x3 or 6x6~%float64[] correlation       # correlation between pose and twist if it exists it will be 3x3 or 6x6~%================================================================================~%MSG: tuw_object_msgs/Object~%# This expresses a object in a 3D space~%int32[] ids                  # possible ids of the detected object (empty if no id could be identified/assigned)~%int32   shape                # shape type (possible types are listed below)~%float64[] shape_variables    # variables correspoding to the shape of the object (possible types are listed below)~%float64[] ids_confidence     # confidence of the possible ids in [0, 1]~%geometry_msgs/Pose pose      # pose of the detected object~%geometry_msgs/Twist twist    # twist of the detected object~%~%# SHAPE_TYPE                      # SHAPE_VARIABLES~%# ====================================================~%int32 SHAPE_UNKOWN           = 0  # []~%int32 SHAPE_POINT            = 1  # []~%int32 SHAPE_CIRCLE           = 2  # [radius]~%int32 SHAPE_ELLIPSE          = 3  # [radius1, radius2]~%int32 SHAPE_SQUARE           = 4  # [width]~%int32 SHAPE_RECTANGLE        = 5  # [length, width]~%int32 SHAPE_HULL             = 6  # [p0, p1, p2, ...]~%int32 SHAPE_LINE             = 7  # [] or [length] ~%~%int32 SHAPE_SPHERE           = 102~%int32 SHAPE_ELLIPSOID        = 103~%int32 SHAPE_CUBE             = 104~%int32 SHAPE_BOX              = 105~%int32 SHAPE_MESH             = 106~%~%int32 SHAPE_TRAFFIC_CONE     = 201 # [radius, color(1 = blue, 2 = yellow, 3 = red)] ~%int32 SHAPE_DOOR             = 202 # [width, height, opening angle (0=closed), nr of door leafs, clockwise (0) counterclockwise (1)]~%int32 SHAPE_MAP_DOOR         = 212 # for doors already mapped, same parameters as usual door~%int32 SHAPE_PERSON           = 203~%int32 SHAPE_VEHICLE          = 204~%int32 SHAPE_FIDUCIAL         = 205~%int32 SHAPE_CONE             = 206 # [radius, height]~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectDetection)))
  "Returns full string definition for message of type 'ObjectDetection"
  (cl:format cl:nil "# This expresses a object detection~%Header header                                 # timestamp in the header is the acquisition time and frame~%~%float32 distance_min                          # distance minimum range value [m]~%float32 distance_max                          # distance maximum range value [m]~%float32 distance_max_id                       # distance maximum range value to detect id [m]~%~%geometry_msgs/Quaternion view_direction       # view direction~%float32 fov_horizontal                        # field of view horizontal [rad]~%float32 fov_vertical                          # field of view vertical [rad]~%~%string   type                                 # object type used (person, obstacle, ...)~%~%ObjectWithCovariance[] objects                # detected objects (with covariance)~%~%string          sensor_type                      # Sensor / detector type, see example constants below.~%~%# object type constants~%string OBJECT_TYPE_PERSON = person~%string OBJECT_TYPE_OBSTACLE = obstacle~%string OBJECT_TYPE_TRAFFIC_CONE = traffic_cone~%string OBJECT_TYPE_DOOR = door~%~%# sensor type constants~%string          SENSOR_TYPE_GENERIC_LASER_2D = laser2d~%string          SENSOR_TYPE_GENERIC_LASER_3D = laser3d~%string          SENSOR_TYPE_GENERIC_MONOCULAR_VISION = mono~%string          SENSOR_TYPE_GENERIC_STEREO_VISION = stereo~%string          SENSOR_TYPE_GENERIC_RGBD = rgbd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tuw_object_msgs/ObjectWithCovariance~%# This expresses a object in free space with uncertainty.~%~%Object object~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%~%float64[] covariance_pose   # pose covariance if it exists it will be 3x3 or 6x6~%float64[] covariance_twist  # twist covariance if it exists it will be 3x3 or 6x6~%float64[] correlation       # correlation between pose and twist if it exists it will be 3x3 or 6x6~%================================================================================~%MSG: tuw_object_msgs/Object~%# This expresses a object in a 3D space~%int32[] ids                  # possible ids of the detected object (empty if no id could be identified/assigned)~%int32   shape                # shape type (possible types are listed below)~%float64[] shape_variables    # variables correspoding to the shape of the object (possible types are listed below)~%float64[] ids_confidence     # confidence of the possible ids in [0, 1]~%geometry_msgs/Pose pose      # pose of the detected object~%geometry_msgs/Twist twist    # twist of the detected object~%~%# SHAPE_TYPE                      # SHAPE_VARIABLES~%# ====================================================~%int32 SHAPE_UNKOWN           = 0  # []~%int32 SHAPE_POINT            = 1  # []~%int32 SHAPE_CIRCLE           = 2  # [radius]~%int32 SHAPE_ELLIPSE          = 3  # [radius1, radius2]~%int32 SHAPE_SQUARE           = 4  # [width]~%int32 SHAPE_RECTANGLE        = 5  # [length, width]~%int32 SHAPE_HULL             = 6  # [p0, p1, p2, ...]~%int32 SHAPE_LINE             = 7  # [] or [length] ~%~%int32 SHAPE_SPHERE           = 102~%int32 SHAPE_ELLIPSOID        = 103~%int32 SHAPE_CUBE             = 104~%int32 SHAPE_BOX              = 105~%int32 SHAPE_MESH             = 106~%~%int32 SHAPE_TRAFFIC_CONE     = 201 # [radius, color(1 = blue, 2 = yellow, 3 = red)] ~%int32 SHAPE_DOOR             = 202 # [width, height, opening angle (0=closed), nr of door leafs, clockwise (0) counterclockwise (1)]~%int32 SHAPE_MAP_DOOR         = 212 # for doors already mapped, same parameters as usual door~%int32 SHAPE_PERSON           = 203~%int32 SHAPE_VEHICLE          = 204~%int32 SHAPE_FIDUCIAL         = 205~%int32 SHAPE_CONE             = 206 # [radius, height]~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'view_direction))
     4
     4
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'sensor_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectDetection
    (cl:cons ':header (header msg))
    (cl:cons ':distance_min (distance_min msg))
    (cl:cons ':distance_max (distance_max msg))
    (cl:cons ':distance_max_id (distance_max_id msg))
    (cl:cons ':view_direction (view_direction msg))
    (cl:cons ':fov_horizontal (fov_horizontal msg))
    (cl:cons ':fov_vertical (fov_vertical msg))
    (cl:cons ':type (type msg))
    (cl:cons ':objects (objects msg))
    (cl:cons ':sensor_type (sensor_type msg))
))
