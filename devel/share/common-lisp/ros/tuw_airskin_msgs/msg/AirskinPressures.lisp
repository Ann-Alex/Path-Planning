; Auto-generated. Do not edit!


(cl:in-package tuw_airskin_msgs-msg)


;//! \htmlinclude AirskinPressures.msg.html

(cl:defclass <AirskinPressures> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pressures
    :reader pressures
    :initarg :pressures
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass AirskinPressures (<AirskinPressures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AirskinPressures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AirskinPressures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_airskin_msgs-msg:<AirskinPressures> is deprecated: use tuw_airskin_msgs-msg:AirskinPressures instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AirskinPressures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_airskin_msgs-msg:header-val is deprecated.  Use tuw_airskin_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pressures-val :lambda-list '(m))
(cl:defmethod pressures-val ((m <AirskinPressures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_airskin_msgs-msg:pressures-val is deprecated.  Use tuw_airskin_msgs-msg:pressures instead.")
  (pressures m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AirskinPressures>) ostream)
  "Serializes a message object of type '<AirskinPressures>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pressures))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'pressures))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AirskinPressures>) istream)
  "Deserializes a message object of type '<AirskinPressures>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pressures) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pressures)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AirskinPressures>)))
  "Returns string type for a message object of type '<AirskinPressures>"
  "tuw_airskin_msgs/AirskinPressures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AirskinPressures)))
  "Returns string type for a message object of type 'AirskinPressures"
  "tuw_airskin_msgs/AirskinPressures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AirskinPressures>)))
  "Returns md5sum for a message object of type '<AirskinPressures>"
  "48f413c906b9a36e09c9d0c4a7801786")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AirskinPressures)))
  "Returns md5sum for a message object of type 'AirskinPressures"
  "48f413c906b9a36e09c9d0c4a7801786")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AirskinPressures>)))
  "Returns full string definition for message of type '<AirskinPressures>"
  (cl:format cl:nil "# This expresses a set of AirSkin pad pressures~%Header header                  # timestamp in the header is the acquisition time and frame~%uint32[] pressures             # pressure values of corresponding AirSkin pads~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AirskinPressures)))
  "Returns full string definition for message of type 'AirskinPressures"
  (cl:format cl:nil "# This expresses a set of AirSkin pad pressures~%Header header                  # timestamp in the header is the acquisition time and frame~%uint32[] pressures             # pressure values of corresponding AirSkin pads~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AirskinPressures>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pressures) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AirskinPressures>))
  "Converts a ROS message object to a list"
  (cl:list 'AirskinPressures
    (cl:cons ':header (header msg))
    (cl:cons ':pressures (pressures msg))
))
