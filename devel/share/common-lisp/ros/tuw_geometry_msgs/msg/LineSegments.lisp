; Auto-generated. Do not edit!


(cl:in-package tuw_geometry_msgs-msg)


;//! \htmlinclude LineSegments.msg.html

(cl:defclass <LineSegments> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector tuw_geometry_msgs-msg:LineSegment)
   :initform (cl:make-array 0 :element-type 'tuw_geometry_msgs-msg:LineSegment :initial-element (cl:make-instance 'tuw_geometry_msgs-msg:LineSegment))))
)

(cl:defclass LineSegments (<LineSegments>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineSegments>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineSegments)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_geometry_msgs-msg:<LineSegments> is deprecated: use tuw_geometry_msgs-msg:LineSegments instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LineSegments>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_geometry_msgs-msg:header-val is deprecated.  Use tuw_geometry_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <LineSegments>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_geometry_msgs-msg:segments-val is deprecated.  Use tuw_geometry_msgs-msg:segments instead.")
  (segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineSegments>) ostream)
  "Serializes a message object of type '<LineSegments>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineSegments>) istream)
  "Deserializes a message object of type '<LineSegments>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_geometry_msgs-msg:LineSegment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineSegments>)))
  "Returns string type for a message object of type '<LineSegments>"
  "tuw_geometry_msgs/LineSegments")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineSegments)))
  "Returns string type for a message object of type 'LineSegments"
  "tuw_geometry_msgs/LineSegments")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineSegments>)))
  "Returns md5sum for a message object of type '<LineSegments>"
  "266fc42f8083d1cc6c451ea3a5df3765")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineSegments)))
  "Returns md5sum for a message object of type 'LineSegments"
  "266fc42f8083d1cc6c451ea3a5df3765")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineSegments>)))
  "Returns full string definition for message of type '<LineSegments>"
  (cl:format cl:nil "Header header                      # timestamp in the header is the acquisition time and frame~%~%LineSegment[] segments             # detected lines~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_geometry_msgs/LineSegment~%uint32 id                     # Segment id~%~%geometry_msgs/Point p0        # linesegment endpoint 0~%geometry_msgs/Point p1        # linesegment endpoint 1~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineSegments)))
  "Returns full string definition for message of type 'LineSegments"
  (cl:format cl:nil "Header header                      # timestamp in the header is the acquisition time and frame~%~%LineSegment[] segments             # detected lines~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_geometry_msgs/LineSegment~%uint32 id                     # Segment id~%~%geometry_msgs/Point p0        # linesegment endpoint 0~%geometry_msgs/Point p1        # linesegment endpoint 1~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineSegments>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineSegments>))
  "Converts a ROS message object to a list"
  (cl:list 'LineSegments
    (cl:cons ':header (header msg))
    (cl:cons ':segments (segments msg))
))
