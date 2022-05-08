; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude RobotGoals.msg.html

(cl:defclass <RobotGoals> (roslisp-msg-protocol:ros-message)
  ((robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (destinations
    :reader destinations
    :initarg :destinations
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass RobotGoals (<RobotGoals>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotGoals>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotGoals)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<RobotGoals> is deprecated: use tuw_multi_robot_msgs-msg:RobotGoals instead.")))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <RobotGoals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:robot_name-val is deprecated.  Use tuw_multi_robot_msgs-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'destinations-val :lambda-list '(m))
(cl:defmethod destinations-val ((m <RobotGoals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:destinations-val is deprecated.  Use tuw_multi_robot_msgs-msg:destinations instead.")
  (destinations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotGoals>) ostream)
  "Serializes a message object of type '<RobotGoals>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'destinations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'destinations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotGoals>) istream)
  "Deserializes a message object of type '<RobotGoals>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'destinations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'destinations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotGoals>)))
  "Returns string type for a message object of type '<RobotGoals>"
  "tuw_multi_robot_msgs/RobotGoals")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGoals)))
  "Returns string type for a message object of type 'RobotGoals"
  "tuw_multi_robot_msgs/RobotGoals")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotGoals>)))
  "Returns md5sum for a message object of type '<RobotGoals>"
  "b8f37aa499812d58bbe5ed4a6053d837")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotGoals)))
  "Returns md5sum for a message object of type 'RobotGoals"
  "b8f37aa499812d58bbe5ed4a6053d837")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotGoals>)))
  "Returns full string definition for message of type '<RobotGoals>"
  (cl:format cl:nil "#################################################################~%## used to describe a set of destinations for a robot~%## robot_name is used as id and often used as namespace for topics~%#################################################################~%~%string robot_name                   # the name of the robot~%geometry_msgs/Pose[] destinations   # Describes a set of destinations, where the last one is the final goal of the trip~%                                    # if there are more than one destinations the first one is the start pose~%                                    # else the current pose of the robot is used as start~% ~% ~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotGoals)))
  "Returns full string definition for message of type 'RobotGoals"
  (cl:format cl:nil "#################################################################~%## used to describe a set of destinations for a robot~%## robot_name is used as id and often used as namespace for topics~%#################################################################~%~%string robot_name                   # the name of the robot~%geometry_msgs/Pose[] destinations   # Describes a set of destinations, where the last one is the final goal of the trip~%                                    # if there are more than one destinations the first one is the start pose~%                                    # else the current pose of the robot is used as start~% ~% ~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotGoals>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'destinations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotGoals>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotGoals
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':destinations (destinations msg))
))
