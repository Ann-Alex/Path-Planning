; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude Graph.msg.html

(cl:defclass <Graph> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (origin
    :reader origin
    :initarg :origin
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (vertices
    :reader vertices
    :initarg :vertices
    :type (cl:vector tuw_multi_robot_msgs-msg:Vertex)
   :initform (cl:make-array 0 :element-type 'tuw_multi_robot_msgs-msg:Vertex :initial-element (cl:make-instance 'tuw_multi_robot_msgs-msg:Vertex))))
)

(cl:defclass Graph (<Graph>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Graph>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Graph)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<Graph> is deprecated: use tuw_multi_robot_msgs-msg:Graph instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:header-val is deprecated.  Use tuw_multi_robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:origin-val is deprecated.  Use tuw_multi_robot_msgs-msg:origin instead.")
  (origin m))

(cl:ensure-generic-function 'vertices-val :lambda-list '(m))
(cl:defmethod vertices-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:vertices-val is deprecated.  Use tuw_multi_robot_msgs-msg:vertices instead.")
  (vertices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Graph>) ostream)
  "Serializes a message object of type '<Graph>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vertices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vertices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Graph>) istream)
  "Deserializes a message object of type '<Graph>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vertices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vertices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_multi_robot_msgs-msg:Vertex))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Graph>)))
  "Returns string type for a message object of type '<Graph>"
  "tuw_multi_robot_msgs/Graph")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Graph)))
  "Returns string type for a message object of type 'Graph"
  "tuw_multi_robot_msgs/Graph")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Graph>)))
  "Returns md5sum for a message object of type '<Graph>"
  "8d3cacdc216cb72e58eac668547de52b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Graph)))
  "Returns md5sum for a message object of type 'Graph"
  "8d3cacdc216cb72e58eac668547de52b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Graph>)))
  "Returns full string definition for message of type '<Graph>"
  (cl:format cl:nil "#################################################################~%## This message is used to transport a graph between two nodes.~%## Each vertex has a set of points and a width describing the~%## shape of it and additionally successors and predecessors~%## to describe the overall structure of the graph ~%##~%## Remark for the TUW_Multi_Robot_Router~%## !! all vertices have to be sorted by id~%## !! every id must be present...~%#################################################################~%~%Header header               # Header for Timestamp and Id~%geometry_msgs/Pose origin   # The origin of the map (respectively: offset (the map is moved))~%Vertex[] vertices           # The vertices in the graph (in pixels)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tuw_multi_robot_msgs/Vertex~%#################################################################~%## A single vertex in a graph ~%## Each vertex of the same graph must have a unique id. ~%## Successors and Predecessors must have a common start or end~%## point ~%#################################################################~%uint32 id                   # Vertex id~%bool valid                  # true if it can be used for planning~%geometry_msgs/Point[] path  # points describing a path from the vertex start to the vertex endpoint~%                            #    the first point in the array reprecents the start and the last the endpoint~%                            #    this points can also be used by the vehciles local path following algorithm ~%uint32 weight               # the weight of the vertex (e.g. length of the segment)~%float32 width               # fee space next to the vertex~%uint32[] successors         # edges to successors~%uint32[] predecessors       # edges to predecessor~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Graph)))
  "Returns full string definition for message of type 'Graph"
  (cl:format cl:nil "#################################################################~%## This message is used to transport a graph between two nodes.~%## Each vertex has a set of points and a width describing the~%## shape of it and additionally successors and predecessors~%## to describe the overall structure of the graph ~%##~%## Remark for the TUW_Multi_Robot_Router~%## !! all vertices have to be sorted by id~%## !! every id must be present...~%#################################################################~%~%Header header               # Header for Timestamp and Id~%geometry_msgs/Pose origin   # The origin of the map (respectively: offset (the map is moved))~%Vertex[] vertices           # The vertices in the graph (in pixels)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tuw_multi_robot_msgs/Vertex~%#################################################################~%## A single vertex in a graph ~%## Each vertex of the same graph must have a unique id. ~%## Successors and Predecessors must have a common start or end~%## point ~%#################################################################~%uint32 id                   # Vertex id~%bool valid                  # true if it can be used for planning~%geometry_msgs/Point[] path  # points describing a path from the vertex start to the vertex endpoint~%                            #    the first point in the array reprecents the start and the last the endpoint~%                            #    this points can also be used by the vehciles local path following algorithm ~%uint32 weight               # the weight of the vertex (e.g. length of the segment)~%float32 width               # fee space next to the vertex~%uint32[] successors         # edges to successors~%uint32[] predecessors       # edges to predecessor~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Graph>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vertices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Graph>))
  "Converts a ROS message object to a list"
  (cl:list 'Graph
    (cl:cons ':header (header msg))
    (cl:cons ':origin (origin msg))
    (cl:cons ':vertices (vertices msg))
))
