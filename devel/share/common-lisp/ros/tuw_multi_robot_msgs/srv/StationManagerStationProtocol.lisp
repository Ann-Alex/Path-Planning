; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-srv)


;//! \htmlinclude StationManagerStationProtocol-request.msg.html

(cl:defclass <StationManagerStationProtocol-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:string
    :initform "")
   (station
    :reader station
    :initarg :station
    :type tuw_multi_robot_msgs-msg:Station
    :initform (cl:make-instance 'tuw_multi_robot_msgs-msg:Station)))
)

(cl:defclass StationManagerStationProtocol-request (<StationManagerStationProtocol-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationManagerStationProtocol-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationManagerStationProtocol-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-srv:<StationManagerStationProtocol-request> is deprecated: use tuw_multi_robot_msgs-srv:StationManagerStationProtocol-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <StationManagerStationProtocol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:request-val is deprecated.  Use tuw_multi_robot_msgs-srv:request instead.")
  (request m))

(cl:ensure-generic-function 'station-val :lambda-list '(m))
(cl:defmethod station-val ((m <StationManagerStationProtocol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:station-val is deprecated.  Use tuw_multi_robot_msgs-srv:station instead.")
  (station m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StationManagerStationProtocol-request>)))
    "Constants for message type '<StationManagerStationProtocol-request>"
  '((:APPEND . "append                          # request to append sent station")
    (:REMOVE . "remove                          # request to remove sent station"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StationManagerStationProtocol-request)))
    "Constants for message type 'StationManagerStationProtocol-request"
  '((:APPEND . "append                          # request to append sent station")
    (:REMOVE . "remove                          # request to remove sent station"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationManagerStationProtocol-request>) ostream)
  "Serializes a message object of type '<StationManagerStationProtocol-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'station) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationManagerStationProtocol-request>) istream)
  "Deserializes a message object of type '<StationManagerStationProtocol-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'station) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationManagerStationProtocol-request>)))
  "Returns string type for a service object of type '<StationManagerStationProtocol-request>"
  "tuw_multi_robot_msgs/StationManagerStationProtocolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationManagerStationProtocol-request)))
  "Returns string type for a service object of type 'StationManagerStationProtocol-request"
  "tuw_multi_robot_msgs/StationManagerStationProtocolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationManagerStationProtocol-request>)))
  "Returns md5sum for a message object of type '<StationManagerStationProtocol-request>"
  "1f5e895558b51eb5ebcc012fba03f68a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationManagerStationProtocol-request)))
  "Returns md5sum for a message object of type 'StationManagerStationProtocol-request"
  "1f5e895558b51eb5ebcc012fba03f68a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationManagerStationProtocol-request>)))
  "Returns full string definition for message of type '<StationManagerStationProtocol-request>"
  (cl:format cl:nil "#################################################################~%## Protocol to Send and Receive Control Commands~%#################################################################~%~%string                          request         # request string~%tuw_multi_robot_msgs/Station    station         # station message~%~%# request constants~%string APPEND = append                          # request to append sent station~%string REMOVE = remove                          # request to remove sent station~%~%~%================================================================================~%MSG: tuw_multi_robot_msgs/Station~%#################################################################~%## Station for Robots to Drive to~%#################################################################~%~%Header                 header       # header~%int32                  id           # station ID~%string                 name         # station name~%geometry_msgs/Pose     pose         # station position~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationManagerStationProtocol-request)))
  "Returns full string definition for message of type 'StationManagerStationProtocol-request"
  (cl:format cl:nil "#################################################################~%## Protocol to Send and Receive Control Commands~%#################################################################~%~%string                          request         # request string~%tuw_multi_robot_msgs/Station    station         # station message~%~%# request constants~%string APPEND = append                          # request to append sent station~%string REMOVE = remove                          # request to remove sent station~%~%~%================================================================================~%MSG: tuw_multi_robot_msgs/Station~%#################################################################~%## Station for Robots to Drive to~%#################################################################~%~%Header                 header       # header~%int32                  id           # station ID~%string                 name         # station name~%geometry_msgs/Pose     pose         # station position~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationManagerStationProtocol-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'station))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationManagerStationProtocol-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StationManagerStationProtocol-request
    (cl:cons ':request (request msg))
    (cl:cons ':station (station msg))
))
;//! \htmlinclude StationManagerStationProtocol-response.msg.html

(cl:defclass <StationManagerStationProtocol-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass StationManagerStationProtocol-response (<StationManagerStationProtocol-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationManagerStationProtocol-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationManagerStationProtocol-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-srv:<StationManagerStationProtocol-response> is deprecated: use tuw_multi_robot_msgs-srv:StationManagerStationProtocol-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <StationManagerStationProtocol-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:response-val is deprecated.  Use tuw_multi_robot_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StationManagerStationProtocol-response>)))
    "Constants for message type '<StationManagerStationProtocol-response>"
  '((:EXECUTED . "executed                      # response if the request could be executed successful")
    (:FAILED . "failed                          # response if the request could not be executed successful")
    (:ERROR . "error                            # response if the request is unknown"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StationManagerStationProtocol-response)))
    "Constants for message type 'StationManagerStationProtocol-response"
  '((:EXECUTED . "executed                      # response if the request could be executed successful")
    (:FAILED . "failed                          # response if the request could not be executed successful")
    (:ERROR . "error                            # response if the request is unknown"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationManagerStationProtocol-response>) ostream)
  "Serializes a message object of type '<StationManagerStationProtocol-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationManagerStationProtocol-response>) istream)
  "Deserializes a message object of type '<StationManagerStationProtocol-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationManagerStationProtocol-response>)))
  "Returns string type for a service object of type '<StationManagerStationProtocol-response>"
  "tuw_multi_robot_msgs/StationManagerStationProtocolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationManagerStationProtocol-response)))
  "Returns string type for a service object of type 'StationManagerStationProtocol-response"
  "tuw_multi_robot_msgs/StationManagerStationProtocolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationManagerStationProtocol-response>)))
  "Returns md5sum for a message object of type '<StationManagerStationProtocol-response>"
  "1f5e895558b51eb5ebcc012fba03f68a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationManagerStationProtocol-response)))
  "Returns md5sum for a message object of type 'StationManagerStationProtocol-response"
  "1f5e895558b51eb5ebcc012fba03f68a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationManagerStationProtocol-response>)))
  "Returns full string definition for message of type '<StationManagerStationProtocol-response>"
  (cl:format cl:nil "~%string                          response        # response string~%~%# response constants~%string EXECUTED = executed                      # response if the request could be executed successful~%string FAILED = failed                          # response if the request could not be executed successful~%string ERROR = error                            # response if the request is unknown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationManagerStationProtocol-response)))
  "Returns full string definition for message of type 'StationManagerStationProtocol-response"
  (cl:format cl:nil "~%string                          response        # response string~%~%# response constants~%string EXECUTED = executed                      # response if the request could be executed successful~%string FAILED = failed                          # response if the request could not be executed successful~%string ERROR = error                            # response if the request is unknown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationManagerStationProtocol-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationManagerStationProtocol-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StationManagerStationProtocol-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StationManagerStationProtocol)))
  'StationManagerStationProtocol-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StationManagerStationProtocol)))
  'StationManagerStationProtocol-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationManagerStationProtocol)))
  "Returns string type for a service object of type '<StationManagerStationProtocol>"
  "tuw_multi_robot_msgs/StationManagerStationProtocol")