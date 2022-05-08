; Auto-generated. Do not edit!


(cl:in-package tuw_vehicle_msgs-msg)


;//! \htmlinclude TrackMarking.msg.html

(cl:defclass <TrackMarking> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrackMarking (<TrackMarking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackMarking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackMarking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_vehicle_msgs-msg:<TrackMarking> is deprecated: use tuw_vehicle_msgs-msg:TrackMarking instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TrackMarking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:pose-val is deprecated.  Use tuw_vehicle_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <TrackMarking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_vehicle_msgs-msg:type-val is deprecated.  Use tuw_vehicle_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrackMarking>)))
    "Constants for message type '<TrackMarking>"
  '((:TRACK_MARKING_TYPE_UNKNOWN . 0)
    (:TRACK_MARKING_TYPE_LEFT . 1)
    (:TRACK_MARKING_TYPE_RIGHT . 2)
    (:TRACK_MARKING_TYPE_START_STOP . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrackMarking)))
    "Constants for message type 'TrackMarking"
  '((:TRACK_MARKING_TYPE_UNKNOWN . 0)
    (:TRACK_MARKING_TYPE_LEFT . 1)
    (:TRACK_MARKING_TYPE_RIGHT . 2)
    (:TRACK_MARKING_TYPE_START_STOP . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackMarking>) ostream)
  "Serializes a message object of type '<TrackMarking>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackMarking>) istream)
  "Deserializes a message object of type '<TrackMarking>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackMarking>)))
  "Returns string type for a message object of type '<TrackMarking>"
  "tuw_vehicle_msgs/TrackMarking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackMarking)))
  "Returns string type for a message object of type 'TrackMarking"
  "tuw_vehicle_msgs/TrackMarking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackMarking>)))
  "Returns md5sum for a message object of type '<TrackMarking>"
  "648cedcb83e283b2403b91f87175eb19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackMarking)))
  "Returns md5sum for a message object of type 'TrackMarking"
  "648cedcb83e283b2403b91f87175eb19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackMarking>)))
  "Returns full string definition for message of type '<TrackMarking>"
  (cl:format cl:nil "# single marking on the track~%~%# position of the marking in space, as well as normal angle along the racetrack path~%geometry_msgs/Pose2D pose~%~%# type of track marking~%uint8 type~%~%uint8 TRACK_MARKING_TYPE_UNKNOWN = 0~%uint8 TRACK_MARKING_TYPE_LEFT = 1~%uint8 TRACK_MARKING_TYPE_RIGHT = 2~%uint8 TRACK_MARKING_TYPE_START_STOP = 4~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackMarking)))
  "Returns full string definition for message of type 'TrackMarking"
  (cl:format cl:nil "# single marking on the track~%~%# position of the marking in space, as well as normal angle along the racetrack path~%geometry_msgs/Pose2D pose~%~%# type of track marking~%uint8 type~%~%uint8 TRACK_MARKING_TYPE_UNKNOWN = 0~%uint8 TRACK_MARKING_TYPE_LEFT = 1~%uint8 TRACK_MARKING_TYPE_RIGHT = 2~%uint8 TRACK_MARKING_TYPE_START_STOP = 4~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackMarking>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackMarking>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackMarking
    (cl:cons ':pose (pose msg))
    (cl:cons ':type (type msg))
))
