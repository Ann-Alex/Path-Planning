;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::Vertex)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'Vertex (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::VERTEX")
  (make-package "TUW_MULTI_ROBOT_MSGS::VERTEX"))

(in-package "ROS")
;;//! \htmlinclude Vertex.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tuw_multi_robot_msgs::Vertex
  :super ros::object
  :slots (_id _valid _path _weight _width _successors _predecessors ))

(defmethod tuw_multi_robot_msgs::Vertex
  (:init
   (&key
    ((:id __id) 0)
    ((:valid __valid) nil)
    ((:path __path) ())
    ((:weight __weight) 0)
    ((:width __width) 0.0)
    ((:successors __successors) (make-array 0 :initial-element 0 :element-type :integer))
    ((:predecessors __predecessors) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _valid __valid)
   (setq _path __path)
   (setq _weight (round __weight))
   (setq _width (float __width))
   (setq _successors __successors)
   (setq _predecessors __predecessors)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:successors
   (&optional __successors)
   (if __successors (setq _successors __successors)) _successors)
  (:predecessors
   (&optional __predecessors)
   (if __predecessors (setq _predecessors __predecessors)) _predecessors)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; bool _valid
    1
    ;; geometry_msgs/Point[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ;; uint32 _weight
    4
    ;; float32 _width
    4
    ;; uint32[] _successors
    (* 4    (length _successors)) 4
    ;; uint32[] _predecessors
    (* 4    (length _predecessors)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;; uint32 _weight
       (write-long _weight s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32[] _successors
     (write-long (length _successors) s)
     (dotimes (i (length _successors))
       (write-long (elt _successors i) s)
       )
     ;; uint32[] _predecessors
     (write-long (length _predecessors) s)
     (dotimes (i (length _predecessors))
       (write-long (elt _predecessors i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _weight
     (setq _weight (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32[] _successors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _successors (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _successors i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _predecessors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predecessors (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _predecessors i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::Vertex :md5sum-) "bd4a3cd6c3c626262c4d30c812a2922e")
(setf (get tuw_multi_robot_msgs::Vertex :datatype-) "tuw_multi_robot_msgs/Vertex")
(setf (get tuw_multi_robot_msgs::Vertex :definition-)
      "#################################################################
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
 

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :tuw_multi_robot_msgs/Vertex "bd4a3cd6c3c626262c4d30c812a2922e")


