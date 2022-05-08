; Auto-generated. Do not edit!


(cl:in-package tuw_gazebo_msgs-msg)


;//! \htmlinclude JointsCmdI4ws.msg.html

(cl:defclass <JointsCmdI4ws> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cmd
    :reader cmd
    :initarg :cmd
    :type (cl:vector tuw_gazebo_msgs-msg:JointCmd)
   :initform (cl:make-array 8 :element-type 'tuw_gazebo_msgs-msg:JointCmd :initial-element (cl:make-instance 'tuw_gazebo_msgs-msg:JointCmd))))
)

(cl:defclass JointsCmdI4ws (<JointsCmdI4ws>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointsCmdI4ws>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointsCmdI4ws)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_gazebo_msgs-msg:<JointsCmdI4ws> is deprecated: use tuw_gazebo_msgs-msg:JointsCmdI4ws instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JointsCmdI4ws>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_gazebo_msgs-msg:header-val is deprecated.  Use tuw_gazebo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <JointsCmdI4ws>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_gazebo_msgs-msg:cmd-val is deprecated.  Use tuw_gazebo_msgs-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointsCmdI4ws>) ostream)
  "Serializes a message object of type '<JointsCmdI4ws>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointsCmdI4ws>) istream)
  "Deserializes a message object of type '<JointsCmdI4ws>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'cmd) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'cmd)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_gazebo_msgs-msg:JointCmd))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointsCmdI4ws>)))
  "Returns string type for a message object of type '<JointsCmdI4ws>"
  "tuw_gazebo_msgs/JointsCmdI4ws")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointsCmdI4ws)))
  "Returns string type for a message object of type 'JointsCmdI4ws"
  "tuw_gazebo_msgs/JointsCmdI4ws")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointsCmdI4ws>)))
  "Returns md5sum for a message object of type '<JointsCmdI4ws>"
  "f73647fd5aebcac5be306d55704f0b9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointsCmdI4ws)))
  "Returns md5sum for a message object of type 'JointsCmdI4ws"
  "f73647fd5aebcac5be306d55704f0b9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointsCmdI4ws>)))
  "Returns full string definition for message of type '<JointsCmdI4ws>"
  (cl:format cl:nil "Header header~%JointCmd[8] cmd~%~%#Those are the 8 joints in order~%~%#JointCmd steer_tr~%#JointCmd steer_tl~%#JointCmd steer_br~%#JointCmd steer_bl~%~%#JointCmd wheel_tr~%#JointCmd wheel_tl~%#JointCmd wheel_br~%#JointCmd wheel_bl~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_gazebo_msgs/JointCmd~%float64 u~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointsCmdI4ws)))
  "Returns full string definition for message of type 'JointsCmdI4ws"
  (cl:format cl:nil "Header header~%JointCmd[8] cmd~%~%#Those are the 8 joints in order~%~%#JointCmd steer_tr~%#JointCmd steer_tl~%#JointCmd steer_br~%#JointCmd steer_bl~%~%#JointCmd wheel_tr~%#JointCmd wheel_tl~%#JointCmd wheel_br~%#JointCmd wheel_bl~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_gazebo_msgs/JointCmd~%float64 u~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointsCmdI4ws>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cmd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointsCmdI4ws>))
  "Converts a ROS message object to a list"
  (cl:list 'JointsCmdI4ws
    (cl:cons ':header (header msg))
    (cl:cons ':cmd (cmd msg))
))
