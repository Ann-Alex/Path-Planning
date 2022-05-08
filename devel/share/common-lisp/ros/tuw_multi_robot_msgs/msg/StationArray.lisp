; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude StationArray.msg.html

(cl:defclass <StationArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stations
    :reader stations
    :initarg :stations
    :type (cl:vector tuw_multi_robot_msgs-msg:Station)
   :initform (cl:make-array 0 :element-type 'tuw_multi_robot_msgs-msg:Station :initial-element (cl:make-instance 'tuw_multi_robot_msgs-msg:Station))))
)

(cl:defclass StationArray (<StationArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<StationArray> is deprecated: use tuw_multi_robot_msgs-msg:StationArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:header-val is deprecated.  Use tuw_multi_robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'stations-val :lambda-list '(m))
(cl:defmethod stations-val ((m <StationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:stations-val is deprecated.  Use tuw_multi_robot_msgs-msg:stations instead.")
  (stations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationArray>) ostream)
  "Serializes a message object of type '<StationArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'stations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationArray>) istream)
  "Deserializes a message object of type '<StationArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_multi_robot_msgs-msg:Station))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationArray>)))
  "Returns string type for a message object of type '<StationArray>"
  "tuw_multi_robot_msgs/StationArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationArray)))
  "Returns string type for a message object of type 'StationArray"
  "tuw_multi_robot_msgs/StationArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationArray>)))
  "Returns md5sum for a message object of type '<StationArray>"
  "504d77c0e4ad28adb79d621cbf218466")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationArray)))
  "Returns md5sum for a message object of type 'StationArray"
  "504d77c0e4ad28adb79d621cbf218466")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationArray>)))
  "Returns full string definition for message of type '<StationArray>"
  (cl:format cl:nil "#################################################################~%## Array of Stations for Robots to Drive to~%#################################################################~%~%Header          header      # header~%Station[]       stations    # array of stations~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/Station~%#################################################################~%## Station for Robots to Drive to~%#################################################################~%~%Header                 header       # header~%int32                  id           # station ID~%string                 name         # station name~%geometry_msgs/Pose     pose         # station position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationArray)))
  "Returns full string definition for message of type 'StationArray"
  (cl:format cl:nil "#################################################################~%## Array of Stations for Robots to Drive to~%#################################################################~%~%Header          header      # header~%Station[]       stations    # array of stations~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/Station~%#################################################################~%## Station for Robots to Drive to~%#################################################################~%~%Header                 header       # header~%int32                  id           # station ID~%string                 name         # station name~%geometry_msgs/Pose     pose         # station position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationArray>))
  "Converts a ROS message object to a list"
  (cl:list 'StationArray
    (cl:cons ':header (header msg))
    (cl:cons ':stations (stations msg))
))
