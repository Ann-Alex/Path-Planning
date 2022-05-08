;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::Graph)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'Graph (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::GRAPH")
  (make-package "TUW_MULTI_ROBOT_MSGS::GRAPH"))

(in-package "ROS")
;;//! \htmlinclude Graph.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_multi_robot_msgs::Graph
  :super ros::object
  :slots (_header _origin _vertices ))

(defmethod tuw_multi_robot_msgs::Graph
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:origin __origin) (instance geometry_msgs::Pose :init))
    ((:vertices __vertices) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _origin __origin)
   (setq _vertices __vertices)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:origin
   (&rest __origin)
   (if (keywordp (car __origin))
       (send* _origin __origin)
     (progn
       (if __origin (setq _origin (car __origin)))
       _origin)))
  (:vertices
   (&rest __vertices)
   (if (keywordp (car __vertices))
       (send* _vertices __vertices)
     (progn
       (if __vertices (setq _vertices (car __vertices)))
       _vertices)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _origin
    (send _origin :serialization-length)
    ;; tuw_multi_robot_msgs/Vertex[] _vertices
    (apply #'+ (send-all _vertices :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _origin
       (send _origin :serialize s)
     ;; tuw_multi_robot_msgs/Vertex[] _vertices
     (write-long (length _vertices) s)
     (dolist (elem _vertices)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _origin
     (send _origin :deserialize buf ptr-) (incf ptr- (send _origin :serialization-length))
   ;; tuw_multi_robot_msgs/Vertex[] _vertices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vertices (let (r) (dotimes (i n) (push (instance tuw_multi_robot_msgs::Vertex :init) r)) r))
     (dolist (elem- _vertices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::Graph :md5sum-) "8d3cacdc216cb72e58eac668547de52b")
(setf (get tuw_multi_robot_msgs::Graph :datatype-) "tuw_multi_robot_msgs/Graph")
(setf (get tuw_multi_robot_msgs::Graph :definition-)
      "#################################################################
## This message is used to transport a graph between two nodes.
## Each vertex has a set of points and a width describing the
## shape of it and additionally successors and predecessors
## to describe the overall structure of the graph 
##
## Remark for the TUW_Multi_Robot_Router
## !! all vertices have to be sorted by id
## !! every id must be present...
#################################################################

Header header               # Header for Timestamp and Id
geometry_msgs/Pose origin   # The origin of the map (respectively: offset (the map is moved))
Vertex[] vertices           # The vertices in the graph (in pixels)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: tuw_multi_robot_msgs/Vertex
#################################################################
## A single vertex in a graph 
## Each vertex of the same graph must have a unique id. 
## Successors and Predecessors must have a common start or end
## point 
#################################################################
uint32 id                   # Vertex id
bool valid                  # true if it can be used for planning
geometry_msgs/Point[] path  # points describing a path from the vertex start to the vertex endpoint
                            #    the first point in the array reprecents the start and the last the endpoint
                            #    this points can also be used by the vehciles local path following algorithm 
uint32 weight               # the weight of the vertex (e.g. length of the segment)
float32 width               # fee space next to the vertex
uint32[] successors         # edges to successors
uint32[] predecessors       # edges to predecessor
 

")



(provide :tuw_multi_robot_msgs/Graph "8d3cacdc216cb72e58eac668547de52b")


