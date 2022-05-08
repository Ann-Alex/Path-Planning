; Auto-generated. Do not edit!


(cl:in-package tuw_airskin_msgs-msg)


;//! \htmlinclude AirskinColors.msg.html

(cl:defclass <AirskinColors> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (idx
    :reader idx
    :initarg :idx
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (colors
    :reader colors
    :initarg :colors
    :type (cl:vector std_msgs-msg:ColorRGBA)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:ColorRGBA :initial-element (cl:make-instance 'std_msgs-msg:ColorRGBA))))
)

(cl:defclass AirskinColors (<AirskinColors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AirskinColors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AirskinColors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_airskin_msgs-msg:<AirskinColors> is deprecated: use tuw_airskin_msgs-msg:AirskinColors instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AirskinColors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_airskin_msgs-msg:header-val is deprecated.  Use tuw_airskin_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'idx-val :lambda-list '(m))
(cl:defmethod idx-val ((m <AirskinColors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_airskin_msgs-msg:idx-val is deprecated.  Use tuw_airskin_msgs-msg:idx instead.")
  (idx m))

(cl:ensure-generic-function 'colors-val :lambda-list '(m))
(cl:defmethod colors-val ((m <AirskinColors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_airskin_msgs-msg:colors-val is deprecated.  Use tuw_airskin_msgs-msg:colors instead.")
  (colors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AirskinColors>) ostream)
  "Serializes a message object of type '<AirskinColors>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'idx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'idx))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'colors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'colors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AirskinColors>) istream)
  "Deserializes a message object of type '<AirskinColors>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'idx) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'idx)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'colors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'colors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:ColorRGBA))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AirskinColors>)))
  "Returns string type for a message object of type '<AirskinColors>"
  "tuw_airskin_msgs/AirskinColors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AirskinColors)))
  "Returns string type for a message object of type 'AirskinColors"
  "tuw_airskin_msgs/AirskinColors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AirskinColors>)))
  "Returns md5sum for a message object of type '<AirskinColors>"
  "89c9873192919e34622afd164f6a8ba5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AirskinColors)))
  "Returns md5sum for a message object of type 'AirskinColors"
  "89c9873192919e34622afd164f6a8ba5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AirskinColors>)))
  "Returns full string definition for message of type '<AirskinColors>"
  (cl:format cl:nil "# This expresses a set of AirSkin pad colors~%Header header                  # timestamp in the header is the acquisition time and frame~%~%uint16[] idx                   # index of the color in the colors array ~%                               # if empty the colors array must match the target system~%std_msgs/ColorRGBA[] colors    # RGBA color values for corresponding AirSkin pads~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AirskinColors)))
  "Returns full string definition for message of type 'AirskinColors"
  (cl:format cl:nil "# This expresses a set of AirSkin pad colors~%Header header                  # timestamp in the header is the acquisition time and frame~%~%uint16[] idx                   # index of the color in the colors array ~%                               # if empty the colors array must match the target system~%std_msgs/ColorRGBA[] colors    # RGBA color values for corresponding AirSkin pads~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AirskinColors>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idx) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'colors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AirskinColors>))
  "Converts a ROS message object to a list"
  (cl:list 'AirskinColors
    (cl:cons ':header (header msg))
    (cl:cons ':idx (idx msg))
    (cl:cons ':colors (colors msg))
))
