; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-srv)


;//! \htmlinclude StationManagerControlProtocol-request.msg.html

(cl:defclass <StationManagerControlProtocol-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:string
    :initform "")
   (addition
    :reader addition
    :initarg :addition
    :type cl:string
    :initform ""))
)

(cl:defclass StationManagerControlProtocol-request (<StationManagerControlProtocol-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationManagerControlProtocol-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationManagerControlProtocol-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-srv:<StationManagerControlProtocol-request> is deprecated: use tuw_multi_robot_msgs-srv:StationManagerControlProtocol-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <StationManagerControlProtocol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:request-val is deprecated.  Use tuw_multi_robot_msgs-srv:request instead.")
  (request m))

(cl:ensure-generic-function 'addition-val :lambda-list '(m))
(cl:defmethod addition-val ((m <StationManagerControlProtocol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:addition-val is deprecated.  Use tuw_multi_robot_msgs-srv:addition instead.")
  (addition m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StationManagerControlProtocol-request>)))
    "Constants for message type '<StationManagerControlProtocol-request>"
  '((:LOAD . "load          # command to load a file (addition is the file path)")
    (:SAVE . "save          # command to save a file (addition is the file path)")
    (:UPDATE . "update      # command to define update policy")
    (:ONCE . "once          # addition to publish data once on request")
    (:CHANGE . "change      # addition to publish data on ever change"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StationManagerControlProtocol-request)))
    "Constants for message type 'StationManagerControlProtocol-request"
  '((:LOAD . "load          # command to load a file (addition is the file path)")
    (:SAVE . "save          # command to save a file (addition is the file path)")
    (:UPDATE . "update      # command to define update policy")
    (:ONCE . "once          # addition to publish data once on request")
    (:CHANGE . "change      # addition to publish data on ever change"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationManagerControlProtocol-request>) ostream)
  "Serializes a message object of type '<StationManagerControlProtocol-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'addition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'addition))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationManagerControlProtocol-request>) istream)
  "Deserializes a message object of type '<StationManagerControlProtocol-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'addition) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'addition) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationManagerControlProtocol-request>)))
  "Returns string type for a service object of type '<StationManagerControlProtocol-request>"
  "tuw_multi_robot_msgs/StationManagerControlProtocolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationManagerControlProtocol-request)))
  "Returns string type for a service object of type 'StationManagerControlProtocol-request"
  "tuw_multi_robot_msgs/StationManagerControlProtocolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationManagerControlProtocol-request>)))
  "Returns md5sum for a message object of type '<StationManagerControlProtocol-request>"
  "4c3ba04d64c7726241cb44a482e7d069")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationManagerControlProtocol-request)))
  "Returns md5sum for a message object of type 'StationManagerControlProtocol-request"
  "4c3ba04d64c7726241cb44a482e7d069")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationManagerControlProtocol-request>)))
  "Returns full string definition for message of type '<StationManagerControlProtocol-request>"
  (cl:format cl:nil "#################################################################~%## Protocol to Send and Receive Station Management Commands~%#################################################################~%~%string      request         # request~%string      addition        # addition, holds information to the request~%~%# request constants~%string LOAD = load          # command to load a file (addition is the file path)~%string SAVE = save          # command to save a file (addition is the file path)~%string UPDATE = update      # command to define update policy~%~%string ONCE = once          # addition to publish data once on request~%string CHANGE = change      # addition to publish data on ever change~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationManagerControlProtocol-request)))
  "Returns full string definition for message of type 'StationManagerControlProtocol-request"
  (cl:format cl:nil "#################################################################~%## Protocol to Send and Receive Station Management Commands~%#################################################################~%~%string      request         # request~%string      addition        # addition, holds information to the request~%~%# request constants~%string LOAD = load          # command to load a file (addition is the file path)~%string SAVE = save          # command to save a file (addition is the file path)~%string UPDATE = update      # command to define update policy~%~%string ONCE = once          # addition to publish data once on request~%string CHANGE = change      # addition to publish data on ever change~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationManagerControlProtocol-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request))
     4 (cl:length (cl:slot-value msg 'addition))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationManagerControlProtocol-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StationManagerControlProtocol-request
    (cl:cons ':request (request msg))
    (cl:cons ':addition (addition msg))
))
;//! \htmlinclude StationManagerControlProtocol-response.msg.html

(cl:defclass <StationManagerControlProtocol-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass StationManagerControlProtocol-response (<StationManagerControlProtocol-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationManagerControlProtocol-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationManagerControlProtocol-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-srv:<StationManagerControlProtocol-response> is deprecated: use tuw_multi_robot_msgs-srv:StationManagerControlProtocol-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <StationManagerControlProtocol-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:response-val is deprecated.  Use tuw_multi_robot_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StationManagerControlProtocol-response>)))
    "Constants for message type '<StationManagerControlProtocol-response>"
  '((:EXECUTED . "executed  # response if the request could be executed successful")
    (:FAILED . "failed      # response if the request could not be executed successful")
    (:ERROR . "error        # response if the request is unknown"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StationManagerControlProtocol-response)))
    "Constants for message type 'StationManagerControlProtocol-response"
  '((:EXECUTED . "executed  # response if the request could be executed successful")
    (:FAILED . "failed      # response if the request could not be executed successful")
    (:ERROR . "error        # response if the request is unknown"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationManagerControlProtocol-response>) ostream)
  "Serializes a message object of type '<StationManagerControlProtocol-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationManagerControlProtocol-response>) istream)
  "Deserializes a message object of type '<StationManagerControlProtocol-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationManagerControlProtocol-response>)))
  "Returns string type for a service object of type '<StationManagerControlProtocol-response>"
  "tuw_multi_robot_msgs/StationManagerControlProtocolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationManagerControlProtocol-response)))
  "Returns string type for a service object of type 'StationManagerControlProtocol-response"
  "tuw_multi_robot_msgs/StationManagerControlProtocolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationManagerControlProtocol-response>)))
  "Returns md5sum for a message object of type '<StationManagerControlProtocol-response>"
  "4c3ba04d64c7726241cb44a482e7d069")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationManagerControlProtocol-response)))
  "Returns md5sum for a message object of type 'StationManagerControlProtocol-response"
  "4c3ba04d64c7726241cb44a482e7d069")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationManagerControlProtocol-response>)))
  "Returns full string definition for message of type '<StationManagerControlProtocol-response>"
  (cl:format cl:nil "~%string      response        # response string~%~%# response constants~%string EXECUTED = executed  # response if the request could be executed successful~%string FAILED = failed      # response if the request could not be executed successful~%string ERROR = error        # response if the request is unknown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationManagerControlProtocol-response)))
  "Returns full string definition for message of type 'StationManagerControlProtocol-response"
  (cl:format cl:nil "~%string      response        # response string~%~%# response constants~%string EXECUTED = executed  # response if the request could be executed successful~%string FAILED = failed      # response if the request could not be executed successful~%string ERROR = error        # response if the request is unknown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationManagerControlProtocol-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationManagerControlProtocol-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StationManagerControlProtocol-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StationManagerControlProtocol)))
  'StationManagerControlProtocol-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StationManagerControlProtocol)))
  'StationManagerControlProtocol-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationManagerControlProtocol)))
  "Returns string type for a service object of type '<StationManagerControlProtocol>"
  "tuw_multi_robot_msgs/StationManagerControlProtocol")