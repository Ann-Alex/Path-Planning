;; Auto-generated. Do not edit!


(when (boundp 'tuw_object_msgs::Object)
  (if (not (find-package "TUW_OBJECT_MSGS"))
    (make-package "TUW_OBJECT_MSGS"))
  (shadow 'Object (find-package "TUW_OBJECT_MSGS")))
(unless (find-package "TUW_OBJECT_MSGS::OBJECT")
  (make-package "TUW_OBJECT_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*SHAPE_UNKOWN*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_UNKOWN* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_UNKOWN* 0)
(intern "*SHAPE_POINT*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_POINT* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_POINT* 1)
(intern "*SHAPE_CIRCLE*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_CIRCLE* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_CIRCLE* 2)
(intern "*SHAPE_ELLIPSE*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_ELLIPSE* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_ELLIPSE* 3)
(intern "*SHAPE_SQUARE*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_SQUARE* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_SQUARE* 4)
(intern "*SHAPE_RECTANGLE*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_RECTANGLE* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_RECTANGLE* 5)
(intern "*SHAPE_HULL*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_HULL* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_HULL* 6)
(intern "*SHAPE_LINE*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_LINE* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_LINE* 7)
(intern "*SHAPE_SPHERE*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_SPHERE* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_SPHERE* 102)
(intern "*SHAPE_ELLIPSOID*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_ELLIPSOID* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_ELLIPSOID* 103)
(intern "*SHAPE_CUBE*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_CUBE* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_CUBE* 104)
(intern "*SHAPE_BOX*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_BOX* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_BOX* 105)
(intern "*SHAPE_MESH*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_MESH* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_MESH* 106)
(intern "*SHAPE_TRAFFIC_CONE*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_TRAFFIC_CONE* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_TRAFFIC_CONE* 201)
(intern "*SHAPE_DOOR*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_DOOR* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_DOOR* 202)
(intern "*SHAPE_MAP_DOOR*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_MAP_DOOR* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_MAP_DOOR* 212)
(intern "*SHAPE_PERSON*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_PERSON* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_PERSON* 203)
(intern "*SHAPE_VEHICLE*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_VEHICLE* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_VEHICLE* 204)
(intern "*SHAPE_FIDUCIAL*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_FIDUCIAL* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_FIDUCIAL* 205)
(intern "*SHAPE_CONE*" (find-package "TUW_OBJECT_MSGS::OBJECT"))
(shadow '*SHAPE_CONE* (find-package "TUW_OBJECT_MSGS::OBJECT"))
(defconstant tuw_object_msgs::Object::*SHAPE_CONE* 206)

(defun tuw_object_msgs::Object-to-symbol (const)
  (cond
        ((= const 0) 'tuw_object_msgs::Object::*SHAPE_UNKOWN*)
        ((= const 1) 'tuw_object_msgs::Object::*SHAPE_POINT*)
        ((= const 2) 'tuw_object_msgs::Object::*SHAPE_CIRCLE*)
        ((= const 3) 'tuw_object_msgs::Object::*SHAPE_ELLIPSE*)
        ((= const 4) 'tuw_object_msgs::Object::*SHAPE_SQUARE*)
        ((= const 5) 'tuw_object_msgs::Object::*SHAPE_RECTANGLE*)
        ((= const 6) 'tuw_object_msgs::Object::*SHAPE_HULL*)
        ((= const 7) 'tuw_object_msgs::Object::*SHAPE_LINE*)
        ((= const 102) 'tuw_object_msgs::Object::*SHAPE_SPHERE*)
        ((= const 103) 'tuw_object_msgs::Object::*SHAPE_ELLIPSOID*)
        ((= const 104) 'tuw_object_msgs::Object::*SHAPE_CUBE*)
        ((= const 105) 'tuw_object_msgs::Object::*SHAPE_BOX*)
        ((= const 106) 'tuw_object_msgs::Object::*SHAPE_MESH*)
        ((= const 201) 'tuw_object_msgs::Object::*SHAPE_TRAFFIC_CONE*)
        ((= const 202) 'tuw_object_msgs::Object::*SHAPE_DOOR*)
        ((= const 212) 'tuw_object_msgs::Object::*SHAPE_MAP_DOOR*)
        ((= const 203) 'tuw_object_msgs::Object::*SHAPE_PERSON*)
        ((= const 204) 'tuw_object_msgs::Object::*SHAPE_VEHICLE*)
        ((= const 205) 'tuw_object_msgs::Object::*SHAPE_FIDUCIAL*)
        ((= const 206) 'tuw_object_msgs::Object::*SHAPE_CONE*)
        (t nil)))

(defclass tuw_object_msgs::Object
  :super ros::object
  :slots (_ids _shape _shape_variables _ids_confidence _pose _twist ))

(defmethod tuw_object_msgs::Object
  (:init
   (&key
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:shape __shape) 0)
    ((:shape_variables __shape_variables) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ids_confidence __ids_confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _shape (round __shape))
   (setq _shape_variables __shape_variables)
   (setq _ids_confidence __ids_confidence)
   (setq _pose __pose)
   (setq _twist __twist)
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:shape_variables
   (&optional __shape_variables)
   (if __shape_variables (setq _shape_variables __shape_variables)) _shape_variables)
  (:ids_confidence
   (&optional __ids_confidence)
   (if __ids_confidence (setq _ids_confidence __ids_confidence)) _ids_confidence)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:serialization-length
   ()
   (+
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ;; int32 _shape
    4
    ;; float64[] _shape_variables
    (* 8    (length _shape_variables)) 4
    ;; float64[] _ids_confidence
    (* 8    (length _ids_confidence)) 4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; int32 _shape
       (write-long _shape s)
     ;; float64[] _shape_variables
     (write-long (length _shape_variables) s)
     (dotimes (i (length _shape_variables))
       (sys::poke (elt _shape_variables i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _ids_confidence
     (write-long (length _ids_confidence) s)
     (dotimes (i (length _ids_confidence))
       (sys::poke (elt _ids_confidence i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _shape
     (setq _shape (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _shape_variables
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape_variables (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _shape_variables i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _ids_confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids_confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ids_confidence i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;;
   self)
  )

(setf (get tuw_object_msgs::Object :md5sum-) "5044ab142c144bddb9b438207ccdb786")
(setf (get tuw_object_msgs::Object :datatype-) "tuw_object_msgs/Object")
(setf (get tuw_object_msgs::Object :definition-)
      "# This expresses a object in a 3D space
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



(provide :tuw_object_msgs/Object "5044ab142c144bddb9b438207ccdb786")


