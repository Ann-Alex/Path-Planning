;; Auto-generated. Do not edit!


(when (boundp 'tuw_object_msgs::ObjectWithCovariance)
  (if (not (find-package "TUW_OBJECT_MSGS"))
    (make-package "TUW_OBJECT_MSGS"))
  (shadow 'ObjectWithCovariance (find-package "TUW_OBJECT_MSGS")))
(unless (find-package "TUW_OBJECT_MSGS::OBJECTWITHCOVARIANCE")
  (make-package "TUW_OBJECT_MSGS::OBJECTWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude ObjectWithCovariance.msg.html


(defclass tuw_object_msgs::ObjectWithCovariance
  :super ros::object
  :slots (_object _covariance_pose _covariance_twist _correlation ))

(defmethod tuw_object_msgs::ObjectWithCovariance
  (:init
   (&key
    ((:object __object) (instance tuw_object_msgs::Object :init))
    ((:covariance_pose __covariance_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:covariance_twist __covariance_twist) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:correlation __correlation) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _object __object)
   (setq _covariance_pose __covariance_pose)
   (setq _covariance_twist __covariance_twist)
   (setq _correlation __correlation)
   self)
  (:object
   (&rest __object)
   (if (keywordp (car __object))
       (send* _object __object)
     (progn
       (if __object (setq _object (car __object)))
       _object)))
  (:covariance_pose
   (&optional __covariance_pose)
   (if __covariance_pose (setq _covariance_pose __covariance_pose)) _covariance_pose)
  (:covariance_twist
   (&optional __covariance_twist)
   (if __covariance_twist (setq _covariance_twist __covariance_twist)) _covariance_twist)
  (:correlation
   (&optional __correlation)
   (if __correlation (setq _correlation __correlation)) _correlation)
  (:serialization-length
   ()
   (+
    ;; tuw_object_msgs/Object _object
    (send _object :serialization-length)
    ;; float64[] _covariance_pose
    (* 8    (length _covariance_pose)) 4
    ;; float64[] _covariance_twist
    (* 8    (length _covariance_twist)) 4
    ;; float64[] _correlation
    (* 8    (length _correlation)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tuw_object_msgs/Object _object
       (send _object :serialize s)
     ;; float64[] _covariance_pose
     (write-long (length _covariance_pose) s)
     (dotimes (i (length _covariance_pose))
       (sys::poke (elt _covariance_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _covariance_twist
     (write-long (length _covariance_twist) s)
     (dotimes (i (length _covariance_twist))
       (sys::poke (elt _covariance_twist i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _correlation
     (write-long (length _correlation) s)
     (dotimes (i (length _correlation))
       (sys::poke (elt _correlation i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tuw_object_msgs/Object _object
     (send _object :deserialize buf ptr-) (incf ptr- (send _object :serialization-length))
   ;; float64[] _covariance_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _covariance_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _covariance_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _covariance_twist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _covariance_twist (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _covariance_twist i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _correlation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _correlation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _correlation i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get tuw_object_msgs::ObjectWithCovariance :md5sum-) "7f5bff1206fce53cd48a87798c13655f")
(setf (get tuw_object_msgs::ObjectWithCovariance :datatype-) "tuw_object_msgs/ObjectWithCovariance")
(setf (get tuw_object_msgs::ObjectWithCovariance :definition-)
      "# This expresses a object in free space with uncertainty.

Object object

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)

float64[] covariance_pose   # pose covariance if it exists it will be 3x3 or 6x6
float64[] covariance_twist  # twist covariance if it exists it will be 3x3 or 6x6
float64[] correlation       # correlation between pose and twist if it exists it will be 3x3 or 6x6
================================================================================
MSG: tuw_object_msgs/Object
# This expresses a object in a 3D space
int32[] ids                  # possible ids of the detected object (empty if no id could be identified/assigned)
int32   shape                # shape type (possible types are listed below)
float64[] shape_variables    # variables correspoding to the shape of the object (possible types are listed below)
float64[] ids_confidence     # confidence of the possible ids in [0, 1]
geometry_msgs/Pose pose      # pose of the detected object
geometry_msgs/Twist twist    # twist of the detected object

# SHAPE_TYPE                      # SHAPE_VARIABLES
# ====================================================
int32 SHAPE_UNKOWN           = 0  # []
int32 SHAPE_POINT            = 1  # []
int32 SHAPE_CIRCLE           = 2  # [radius]
int32 SHAPE_ELLIPSE          = 3  # [radius1, radius2]
int32 SHAPE_SQUARE           = 4  # [width]
int32 SHAPE_RECTANGLE        = 5  # [length, width]
int32 SHAPE_HULL             = 6  # [p0, p1, p2, ...]
int32 SHAPE_LINE             = 7  # [] or [length] 

int32 SHAPE_SPHERE           = 102
int32 SHAPE_ELLIPSOID        = 103
int32 SHAPE_CUBE             = 104
int32 SHAPE_BOX              = 105
int32 SHAPE_MESH             = 106

int32 SHAPE_TRAFFIC_CONE     = 201 # [radius, color(1 = blue, 2 = yellow, 3 = red)] 
int32 SHAPE_DOOR             = 202 # [width, height, opening angle (0=closed), nr of door leafs, clockwise (0) counterclockwise (1)]
int32 SHAPE_MAP_DOOR         = 212 # for doors already mapped, same parameters as usual door
int32 SHAPE_PERSON           = 203
int32 SHAPE_VEHICLE          = 204
int32 SHAPE_FIDUCIAL         = 205
int32 SHAPE_CONE             = 206 # [radius, height]

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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :tuw_object_msgs/ObjectWithCovariance "7f5bff1206fce53cd48a87798c13655f")


