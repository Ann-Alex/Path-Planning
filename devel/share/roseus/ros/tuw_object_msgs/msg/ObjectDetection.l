;; Auto-generated. Do not edit!


(when (boundp 'tuw_object_msgs::ObjectDetection)
  (if (not (find-package "TUW_OBJECT_MSGS"))
    (make-package "TUW_OBJECT_MSGS"))
  (shadow 'ObjectDetection (find-package "TUW_OBJECT_MSGS")))
(unless (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION")
  (make-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))

(in-package "ROS")
;;//! \htmlinclude ObjectDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*OBJECT_TYPE_PERSON*" (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(shadow '*OBJECT_TYPE_PERSON* (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(defconstant tuw_object_msgs::ObjectDetection::*OBJECT_TYPE_PERSON* "person")
(intern "*OBJECT_TYPE_OBSTACLE*" (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(shadow '*OBJECT_TYPE_OBSTACLE* (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(defconstant tuw_object_msgs::ObjectDetection::*OBJECT_TYPE_OBSTACLE* "obstacle")
(intern "*OBJECT_TYPE_TRAFFIC_CONE*" (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(shadow '*OBJECT_TYPE_TRAFFIC_CONE* (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(defconstant tuw_object_msgs::ObjectDetection::*OBJECT_TYPE_TRAFFIC_CONE* "traffic_cone")
(intern "*OBJECT_TYPE_DOOR*" (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(shadow '*OBJECT_TYPE_DOOR* (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(defconstant tuw_object_msgs::ObjectDetection::*OBJECT_TYPE_DOOR* "door")
(intern "*SENSOR_TYPE_GENERIC_LASER_2D*" (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(shadow '*SENSOR_TYPE_GENERIC_LASER_2D* (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(defconstant tuw_object_msgs::ObjectDetection::*SENSOR_TYPE_GENERIC_LASER_2D* "laser2d")
(intern "*SENSOR_TYPE_GENERIC_LASER_3D*" (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(shadow '*SENSOR_TYPE_GENERIC_LASER_3D* (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(defconstant tuw_object_msgs::ObjectDetection::*SENSOR_TYPE_GENERIC_LASER_3D* "laser3d")
(intern "*SENSOR_TYPE_GENERIC_MONOCULAR_VISION*" (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(shadow '*SENSOR_TYPE_GENERIC_MONOCULAR_VISION* (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(defconstant tuw_object_msgs::ObjectDetection::*SENSOR_TYPE_GENERIC_MONOCULAR_VISION* "mono")
(intern "*SENSOR_TYPE_GENERIC_STEREO_VISION*" (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(shadow '*SENSOR_TYPE_GENERIC_STEREO_VISION* (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(defconstant tuw_object_msgs::ObjectDetection::*SENSOR_TYPE_GENERIC_STEREO_VISION* "stereo")
(intern "*SENSOR_TYPE_GENERIC_RGBD*" (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(shadow '*SENSOR_TYPE_GENERIC_RGBD* (find-package "TUW_OBJECT_MSGS::OBJECTDETECTION"))
(defconstant tuw_object_msgs::ObjectDetection::*SENSOR_TYPE_GENERIC_RGBD* "rgbd")

(defun tuw_object_msgs::ObjectDetection-to-symbol (const)
  (cond
        (t nil)))

(defclass tuw_object_msgs::ObjectDetection
  :super ros::object
  :slots (_header _distance_min _distance_max _distance_max_id _view_direction _fov_horizontal _fov_vertical _type _objects _sensor_type ))

(defmethod tuw_object_msgs::ObjectDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:distance_min __distance_min) 0.0)
    ((:distance_max __distance_max) 0.0)
    ((:distance_max_id __distance_max_id) 0.0)
    ((:view_direction __view_direction) (instance geometry_msgs::Quaternion :init))
    ((:fov_horizontal __fov_horizontal) 0.0)
    ((:fov_vertical __fov_vertical) 0.0)
    ((:type __type) "")
    ((:objects __objects) ())
    ((:sensor_type __sensor_type) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _distance_min (float __distance_min))
   (setq _distance_max (float __distance_max))
   (setq _distance_max_id (float __distance_max_id))
   (setq _view_direction __view_direction)
   (setq _fov_horizontal (float __fov_horizontal))
   (setq _fov_vertical (float __fov_vertical))
   (setq _type (string __type))
   (setq _objects __objects)
   (setq _sensor_type (string __sensor_type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:distance_min
   (&optional __distance_min)
   (if __distance_min (setq _distance_min __distance_min)) _distance_min)
  (:distance_max
   (&optional __distance_max)
   (if __distance_max (setq _distance_max __distance_max)) _distance_max)
  (:distance_max_id
   (&optional __distance_max_id)
   (if __distance_max_id (setq _distance_max_id __distance_max_id)) _distance_max_id)
  (:view_direction
   (&rest __view_direction)
   (if (keywordp (car __view_direction))
       (send* _view_direction __view_direction)
     (progn
       (if __view_direction (setq _view_direction (car __view_direction)))
       _view_direction)))
  (:fov_horizontal
   (&optional __fov_horizontal)
   (if __fov_horizontal (setq _fov_horizontal __fov_horizontal)) _fov_horizontal)
  (:fov_vertical
   (&optional __fov_vertical)
   (if __fov_vertical (setq _fov_vertical __fov_vertical)) _fov_vertical)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:sensor_type
   (&optional __sensor_type)
   (if __sensor_type (setq _sensor_type __sensor_type)) _sensor_type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _distance_min
    4
    ;; float32 _distance_max
    4
    ;; float32 _distance_max_id
    4
    ;; geometry_msgs/Quaternion _view_direction
    (send _view_direction :serialization-length)
    ;; float32 _fov_horizontal
    4
    ;; float32 _fov_vertical
    4
    ;; string _type
    4 (length _type)
    ;; tuw_object_msgs/ObjectWithCovariance[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ;; string _sensor_type
    4 (length _sensor_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _distance_min
       (sys::poke _distance_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_max
       (sys::poke _distance_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_max_id
       (sys::poke _distance_max_id (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Quaternion _view_direction
       (send _view_direction :serialize s)
     ;; float32 _fov_horizontal
       (sys::poke _fov_horizontal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fov_vertical
       (sys::poke _fov_vertical (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; tuw_object_msgs/ObjectWithCovariance[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;; string _sensor_type
       (write-long (length _sensor_type) s) (princ _sensor_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _distance_min
     (setq _distance_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_max
     (setq _distance_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_max_id
     (setq _distance_max_id (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Quaternion _view_direction
     (send _view_direction :deserialize buf ptr-) (incf ptr- (send _view_direction :serialization-length))
   ;; float32 _fov_horizontal
     (setq _fov_horizontal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fov_vertical
     (setq _fov_vertical (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; tuw_object_msgs/ObjectWithCovariance[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance tuw_object_msgs::ObjectWithCovariance :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _sensor_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tuw_object_msgs::ObjectDetection :md5sum-) "cea12636c449cb6bd42fd7019d49b395")
(setf (get tuw_object_msgs::ObjectDetection :datatype-) "tuw_object_msgs/ObjectDetection")
(setf (get tuw_object_msgs::ObjectDetection :definition-)
      "# This expresses a object detection
Header header                                 # timestamp in the header is the acquisition time and frame

float32 distance_min                          # distance minimum range value [m]
float32 distance_max                          # distance maximum range value [m]
float32 distance_max_id                       # distance maximum range value to detect id [m]

geometry_msgs/Quaternion view_direction       # view direction
float32 fov_horizontal                        # field of view horizontal [rad]
float32 fov_vertical                          # field of view vertical [rad]

string   type                                 # object type used (person, obstacle, ...)

ObjectWithCovariance[] objects                # detected objects (with covariance)

string          sensor_type                      # Sensor / detector type, see example constants below.

# object type constants
string OBJECT_TYPE_PERSON = person
string OBJECT_TYPE_OBSTACLE = obstacle
string OBJECT_TYPE_TRAFFIC_CONE = traffic_cone
string OBJECT_TYPE_DOOR = door

# sensor type constants
string          SENSOR_TYPE_GENERIC_LASER_2D = laser2d
string          SENSOR_TYPE_GENERIC_LASER_3D = laser3d
string          SENSOR_TYPE_GENERIC_MONOCULAR_VISION = mono
string          SENSOR_TYPE_GENERIC_STEREO_VISION = stereo
string          SENSOR_TYPE_GENERIC_RGBD = rgbd

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: tuw_object_msgs/ObjectWithCovariance
# This expresses a object in free space with uncertainty.

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



(provide :tuw_object_msgs/ObjectDetection "cea12636c449cb6bd42fd7019d49b395")


