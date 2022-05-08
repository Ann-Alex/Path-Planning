; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude RouterStatus.msg.html

(cl:defclass <RouterStatus> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (missing_robots
    :reader missing_robots
    :initarg :missing_robots
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0)
   (overall_path_length
    :reader overall_path_length
    :initarg :overall_path_length
    :type cl:integer
    :initform 0)
   (longest_path_length
    :reader longest_path_length
    :initarg :longest_path_length
    :type cl:integer
    :initform 0)
   (priority_scheduling_attemps
    :reader priority_scheduling_attemps
    :initarg :priority_scheduling_attemps
    :type cl:integer
    :initform 0)
   (speed_scheduling_attemps
    :reader speed_scheduling_attemps
    :initarg :speed_scheduling_attemps
    :type cl:integer
    :initform 0))
)

(cl:defclass RouterStatus (<RouterStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RouterStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RouterStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<RouterStatus> is deprecated: use tuw_multi_robot_msgs-msg:RouterStatus instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RouterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:id-val is deprecated.  Use tuw_multi_robot_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RouterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:success-val is deprecated.  Use tuw_multi_robot_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'missing_robots-val :lambda-list '(m))
(cl:defmethod missing_robots-val ((m <RouterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:missing_robots-val is deprecated.  Use tuw_multi_robot_msgs-msg:missing_robots instead.")
  (missing_robots m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <RouterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:duration-val is deprecated.  Use tuw_multi_robot_msgs-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'overall_path_length-val :lambda-list '(m))
(cl:defmethod overall_path_length-val ((m <RouterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:overall_path_length-val is deprecated.  Use tuw_multi_robot_msgs-msg:overall_path_length instead.")
  (overall_path_length m))

(cl:ensure-generic-function 'longest_path_length-val :lambda-list '(m))
(cl:defmethod longest_path_length-val ((m <RouterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:longest_path_length-val is deprecated.  Use tuw_multi_robot_msgs-msg:longest_path_length instead.")
  (longest_path_length m))

(cl:ensure-generic-function 'priority_scheduling_attemps-val :lambda-list '(m))
(cl:defmethod priority_scheduling_attemps-val ((m <RouterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:priority_scheduling_attemps-val is deprecated.  Use tuw_multi_robot_msgs-msg:priority_scheduling_attemps instead.")
  (priority_scheduling_attemps m))

(cl:ensure-generic-function 'speed_scheduling_attemps-val :lambda-list '(m))
(cl:defmethod speed_scheduling_attemps-val ((m <RouterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:speed_scheduling_attemps-val is deprecated.  Use tuw_multi_robot_msgs-msg:speed_scheduling_attemps instead.")
  (speed_scheduling_attemps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RouterStatus>) ostream)
  "Serializes a message object of type '<RouterStatus>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'missing_robots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'missing_robots))
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'overall_path_length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'longest_path_length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'priority_scheduling_attemps)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_scheduling_attemps)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RouterStatus>) istream)
  "Deserializes a message object of type '<RouterStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'missing_robots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'missing_robots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'overall_path_length) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'longest_path_length) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority_scheduling_attemps) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_scheduling_attemps) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RouterStatus>)))
  "Returns string type for a message object of type '<RouterStatus>"
  "tuw_multi_robot_msgs/RouterStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RouterStatus)))
  "Returns string type for a message object of type 'RouterStatus"
  "tuw_multi_robot_msgs/RouterStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RouterStatus>)))
  "Returns md5sum for a message object of type '<RouterStatus>"
  "155759b83cd058836f14589c98203bee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RouterStatus)))
  "Returns md5sum for a message object of type 'RouterStatus"
  "155759b83cd058836f14589c98203bee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RouterStatus>)))
  "Returns full string definition for message of type '<RouterStatus>"
  (cl:format cl:nil "#################################################################~%## A message to publish the status of the last route ~%## generation~%#################################################################~%~%int32 id # the unique id of the new plan~%bool success # true if a routing table was found to the given scenario~%string[] missing_robots # if the plan fails because of absent robots, these robots are listed here~%int32 duration # the time until a routing table was found~%int32 overall_path_length # the overall path length in the routing table (calculated using weights)~%int32 longest_path_length # the longest path length in a routing table (calculated using weights)~%int32 priority_scheduling_attemps # shows how often robot priorities are exchanged~%int32 speed_scheduling_attemps # shows how many robots speed was reduced during planning~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RouterStatus)))
  "Returns full string definition for message of type 'RouterStatus"
  (cl:format cl:nil "#################################################################~%## A message to publish the status of the last route ~%## generation~%#################################################################~%~%int32 id # the unique id of the new plan~%bool success # true if a routing table was found to the given scenario~%string[] missing_robots # if the plan fails because of absent robots, these robots are listed here~%int32 duration # the time until a routing table was found~%int32 overall_path_length # the overall path length in the routing table (calculated using weights)~%int32 longest_path_length # the longest path length in a routing table (calculated using weights)~%int32 priority_scheduling_attemps # shows how often robot priorities are exchanged~%int32 speed_scheduling_attemps # shows how many robots speed was reduced during planning~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RouterStatus>))
  (cl:+ 0
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'missing_robots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RouterStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RouterStatus
    (cl:cons ':id (id msg))
    (cl:cons ':success (success msg))
    (cl:cons ':missing_robots (missing_robots msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':overall_path_length (overall_path_length msg))
    (cl:cons ':longest_path_length (longest_path_length msg))
    (cl:cons ':priority_scheduling_attemps (priority_scheduling_attemps msg))
    (cl:cons ':speed_scheduling_attemps (speed_scheduling_attemps msg))
))
