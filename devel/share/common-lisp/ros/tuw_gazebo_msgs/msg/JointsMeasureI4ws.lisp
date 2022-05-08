; Auto-generated. Do not edit!


(cl:in-package tuw_gazebo_msgs-msg)


;//! \htmlinclude JointsMeasureI4ws.msg.html

(cl:defclass <JointsMeasureI4ws> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (y
    :reader y
    :initarg :y
    :type (cl:vector tuw_gazebo_msgs-msg:Measure)
   :initform (cl:make-array 8 :element-type 'tuw_gazebo_msgs-msg:Measure :initial-element (cl:make-instance 'tuw_gazebo_msgs-msg:Measure))))
)

(cl:defclass JointsMeasureI4ws (<JointsMeasureI4ws>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointsMeasureI4ws>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointsMeasureI4ws)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_gazebo_msgs-msg:<JointsMeasureI4ws> is deprecated: use tuw_gazebo_msgs-msg:JointsMeasureI4ws instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JointsMeasureI4ws>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_gazebo_msgs-msg:header-val is deprecated.  Use tuw_gazebo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <JointsMeasureI4ws>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_gazebo_msgs-msg:y-val is deprecated.  Use tuw_gazebo_msgs-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointsMeasureI4ws>) ostream)
  "Serializes a message object of type '<JointsMeasureI4ws>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'y))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointsMeasureI4ws>) istream)
  "Deserializes a message object of type '<JointsMeasureI4ws>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'y) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'y)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_gazebo_msgs-msg:Measure))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointsMeasureI4ws>)))
  "Returns string type for a message object of type '<JointsMeasureI4ws>"
  "tuw_gazebo_msgs/JointsMeasureI4ws")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointsMeasureI4ws)))
  "Returns string type for a message object of type 'JointsMeasureI4ws"
  "tuw_gazebo_msgs/JointsMeasureI4ws")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointsMeasureI4ws>)))
  "Returns md5sum for a message object of type '<JointsMeasureI4ws>"
  "5452564cebdea4f1fd3dab3f5100ba5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointsMeasureI4ws)))
  "Returns md5sum for a message object of type 'JointsMeasureI4ws"
  "5452564cebdea4f1fd3dab3f5100ba5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointsMeasureI4ws>)))
  "Returns full string definition for message of type '<JointsMeasureI4ws>"
  (cl:format cl:nil "Header header~%Measure[8] y~%~%#Those are the 8 joints order~%#JointState steer_tr~%#JointState steer_tl~%#JointState steer_br~%#JointState steer_bl~%~%#JointState wheel_tr~%#JointState wheel_tl~%#JointState wheel_br~%#JointState wheel_bl~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_gazebo_msgs/Measure~%float64 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointsMeasureI4ws)))
  "Returns full string definition for message of type 'JointsMeasureI4ws"
  (cl:format cl:nil "Header header~%Measure[8] y~%~%#Those are the 8 joints order~%#JointState steer_tr~%#JointState steer_tl~%#JointState steer_br~%#JointState steer_bl~%~%#JointState wheel_tr~%#JointState wheel_tl~%#JointState wheel_br~%#JointState wheel_bl~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_gazebo_msgs/Measure~%float64 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointsMeasureI4ws>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointsMeasureI4ws>))
  "Converts a ROS message object to a list"
  (cl:list 'JointsMeasureI4ws
    (cl:cons ':header (header msg))
    (cl:cons ':y (y msg))
))
