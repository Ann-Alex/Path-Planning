; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude RobotGoalsArray.msg.html

(cl:defclass <RobotGoalsArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robots
    :reader robots
    :initarg :robots
    :type (cl:vector tuw_multi_robot_msgs-msg:RobotGoals)
   :initform (cl:make-array 0 :element-type 'tuw_multi_robot_msgs-msg:RobotGoals :initial-element (cl:make-instance 'tuw_multi_robot_msgs-msg:RobotGoals))))
)

(cl:defclass RobotGoalsArray (<RobotGoalsArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotGoalsArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotGoalsArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<RobotGoalsArray> is deprecated: use tuw_multi_robot_msgs-msg:RobotGoalsArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotGoalsArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:header-val is deprecated.  Use tuw_multi_robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robots-val :lambda-list '(m))
(cl:defmethod robots-val ((m <RobotGoalsArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:robots-val is deprecated.  Use tuw_multi_robot_msgs-msg:robots instead.")
  (robots m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotGoalsArray>) ostream)
  "Serializes a message object of type '<RobotGoalsArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotGoalsArray>) istream)
  "Deserializes a message object of type '<RobotGoalsArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_multi_robot_msgs-msg:RobotGoals))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotGoalsArray>)))
  "Returns string type for a message object of type '<RobotGoalsArray>"
  "tuw_multi_robot_msgs/RobotGoalsArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGoalsArray)))
  "Returns string type for a message object of type 'RobotGoalsArray"
  "tuw_multi_robot_msgs/RobotGoalsArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotGoalsArray>)))
  "Returns md5sum for a message object of type '<RobotGoalsArray>"
  "fc2eb26a2ff374e1463f5f8d67447cca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotGoalsArray)))
  "Returns md5sum for a message object of type 'RobotGoalsArray"
  "fc2eb26a2ff374e1463f5f8d67447cca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotGoalsArray>)))
  "Returns full string definition for message of type '<RobotGoalsArray>"
  (cl:format cl:nil "#################################################################~%## Used to send goal requests for multiple robots to the multi robot planner~%#################################################################~%~%Header header        # the time of the generation~%RobotGoals[] robots  # contains a goals/checkpoints for each robot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RobotGoals~%#################################################################~%## used to describe a set of destinations for a robot~%## robot_name is used as id and often used as namespace for topics~%#################################################################~%~%string robot_name                   # the name of the robot~%geometry_msgs/Pose[] destinations   # Describes a set of destinations, where the last one is the final goal of the trip~%                                    # if there are more than one destinations the first one is the start pose~%                                    # else the current pose of the robot is used as start~% ~% ~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotGoalsArray)))
  "Returns full string definition for message of type 'RobotGoalsArray"
  (cl:format cl:nil "#################################################################~%## Used to send goal requests for multiple robots to the multi robot planner~%#################################################################~%~%Header header        # the time of the generation~%RobotGoals[] robots  # contains a goals/checkpoints for each robot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RobotGoals~%#################################################################~%## used to describe a set of destinations for a robot~%## robot_name is used as id and often used as namespace for topics~%#################################################################~%~%string robot_name                   # the name of the robot~%geometry_msgs/Pose[] destinations   # Describes a set of destinations, where the last one is the final goal of the trip~%                                    # if there are more than one destinations the first one is the start pose~%                                    # else the current pose of the robot is used as start~% ~% ~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotGoalsArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotGoalsArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotGoalsArray
    (cl:cons ':header (header msg))
    (cl:cons ':robots (robots msg))
))
