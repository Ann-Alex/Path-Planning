;; Auto-generated. Do not edit!


(when (boundp 'tuw_nav_msgs::RouteSegment)
  (if (not (find-package "TUW_NAV_MSGS"))
    (make-package "TUW_NAV_MSGS"))
  (shadow 'RouteSegment (find-package "TUW_NAV_MSGS")))
(unless (find-package "TUW_NAV_MSGS::ROUTESEGMENT")
  (make-package "TUW_NAV_MSGS::ROUTESEGMENT"))

(in-package "ROS")
;;//! \htmlinclude RouteSegment.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tuw_nav_msgs::RouteSegment
  :super ros::object
  :slots (_id _type _orientation _motion_type _start _end _center _level ))

(defmethod tuw_nav_msgs::RouteSegment
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) 0)
    ((:orientation __orientation) 0)
    ((:motion_type __motion_type) 0)
    ((:start __start) (instance geometry_msgs::Pose :init))
    ((:end __end) (instance geometry_msgs::Pose :init))
    ((:center __center) (instance geometry_msgs::Pose :init))
    ((:level __level) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _orientation (round __orientation))
   (setq _motion_type (round __motion_type))
   (setq _start __start)
   (setq _end __end)
   (setq _center __center)
   (setq _level (round __level))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:motion_type
   (&optional __motion_type)
   (if __motion_type (setq _motion_type __motion_type)) _motion_type)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:end
   (&rest __end)
   (if (keywordp (car __end))
       (send* _end __end)
     (progn
       (if __end (setq _end (car __end)))
       _end)))
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; uint8 _type
    1
    ;; uint8 _orientation
    1
    ;; uint8 _motion_type
    1
    ;; geometry_msgs/Pose _start
    (send _start :serialization-length)
    ;; geometry_msgs/Pose _end
    (send _end :serialization-length)
    ;; geometry_msgs/Pose _center
    (send _center :serialization-length)
    ;; int8 _level
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _orientation
       (write-byte _orientation s)
     ;; uint8 _motion_type
       (write-byte _motion_type s)
     ;; geometry_msgs/Pose _start
       (send _start :serialize s)
     ;; geometry_msgs/Pose _end
       (send _end :serialize s)
     ;; geometry_msgs/Pose _center
       (send _center :serialize s)
     ;; int8 _level
       (write-byte _level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _orientation
     (setq _orientation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motion_type
     (setq _motion_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Pose _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/Pose _end
     (send _end :deserialize buf ptr-) (incf ptr- (send _end :serialization-length))
   ;; geometry_msgs/Pose _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; int8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _level 127) (setq _level (- _level 256)))
   ;;
   self)
  )

(setf (get tuw_nav_msgs::RouteSegment :md5sum-) "26469c8984f3cdfc24371244c703f828")
(setf (get tuw_nav_msgs::RouteSegment :datatype-) "tuw_nav_msgs/RouteSegment")
(setf (get tuw_nav_msgs::RouteSegment :definition-)
      "
uint32 id                     # Segment id
uint8 type                    # Segment type
                              # NA      = 0
                              # LINE    = 1
                              # ARC     = 2
                              # SPIROS  = 3
                              # SPLINE  = 4
uint8 orientation             # Segment orientation
                              # CLOCKWISE  = 0
                              # COUNTER_CLOCKWISE  = 1
uint8 motion_type             # Motion type
                              # NA = 0
                              # FLAT = 1
                              # DWA_SLOW = 2
                              # DWA_FAST = 3
                              # MPC_SLOW = 4
                              # MPC_FAST = 5
                              # PI_SLOW = 6
                              # PI_FAST = 7
geometry_msgs/Pose start
geometry_msgs/Pose end
geometry_msgs/Pose center    
int8 level


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

")



(provide :tuw_nav_msgs/RouteSegment "26469c8984f3cdfc24371244c703f828")


