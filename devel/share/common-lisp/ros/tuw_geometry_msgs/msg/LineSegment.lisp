; Auto-generated. Do not edit!


(cl:in-package tuw_geometry_msgs-msg)


;//! \htmlinclude LineSegment.msg.html

(cl:defclass <LineSegment> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (p0
    :reader p0
    :initarg :p0
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (p1
    :reader p1
    :initarg :p1
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass LineSegment (<LineSegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineSegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineSegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_geometry_msgs-msg:<LineSegment> is deprecated: use tuw_geometry_msgs-msg:LineSegment instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LineSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_geometry_msgs-msg:id-val is deprecated.  Use tuw_geometry_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'p0-val :lambda-list '(m))
(cl:defmethod p0-val ((m <LineSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_geometry_msgs-msg:p0-val is deprecated.  Use tuw_geometry_msgs-msg:p0 instead.")
  (p0 m))

(cl:ensure-generic-function 'p1-val :lambda-list '(m))
(cl:defmethod p1-val ((m <LineSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_geometry_msgs-msg:p1-val is deprecated.  Use tuw_geometry_msgs-msg:p1 instead.")
  (p1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineSegment>) ostream)
  "Serializes a message object of type '<LineSegment>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p1) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineSegment>) istream)
  "Deserializes a message object of type '<LineSegment>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p1) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineSegment>)))
  "Returns string type for a message object of type '<LineSegment>"
  "tuw_geometry_msgs/LineSegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineSegment)))
  "Returns string type for a message object of type 'LineSegment"
  "tuw_geometry_msgs/LineSegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineSegment>)))
  "Returns md5sum for a message object of type '<LineSegment>"
  "f8813871a1413bea6f3b9d3b1470ee5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineSegment)))
  "Returns md5sum for a message object of type 'LineSegment"
  "f8813871a1413bea6f3b9d3b1470ee5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineSegment>)))
  "Returns full string definition for message of type '<LineSegment>"
  (cl:format cl:nil "uint32 id                     # Segment id~%~%geometry_msgs/Point p0        # linesegment endpoint 0~%geometry_msgs/Point p1        # linesegment endpoint 1~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineSegment)))
  "Returns full string definition for message of type 'LineSegment"
  (cl:format cl:nil "uint32 id                     # Segment id~%~%geometry_msgs/Point p0        # linesegment endpoint 0~%geometry_msgs/Point p1        # linesegment endpoint 1~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineSegment>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p1))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineSegment>))
  "Converts a ROS message object to a list"
  (cl:list 'LineSegment
    (cl:cons ':id (id msg))
    (cl:cons ':p0 (p0 msg))
    (cl:cons ':p1 (p1 msg))
))
