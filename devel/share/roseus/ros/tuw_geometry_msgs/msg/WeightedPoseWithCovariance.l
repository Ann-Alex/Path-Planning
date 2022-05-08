;; Auto-generated. Do not edit!


(when (boundp 'tuw_geometry_msgs::WeightedPoseWithCovariance)
  (if (not (find-package "TUW_GEOMETRY_MSGS"))
    (make-package "TUW_GEOMETRY_MSGS"))
  (shadow 'WeightedPoseWithCovariance (find-package "TUW_GEOMETRY_MSGS")))
(unless (find-package "TUW_GEOMETRY_MSGS::WEIGHTEDPOSEWITHCOVARIANCE")
  (make-package "TUW_GEOMETRY_MSGS::WEIGHTEDPOSEWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude WeightedPoseWithCovariance.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tuw_geometry_msgs::WeightedPoseWithCovariance
  :super ros::object
  :slots (_pose _covariance _weight ))

(defmethod tuw_geometry_msgs::WeightedPoseWithCovariance
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    ((:weight __weight) 0.0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _covariance __covariance)
   (setq _weight (float __weight))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64[36] _covariance
    (* 8    36)
    ;; float64 _weight
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tuw_geometry_msgs::WeightedPoseWithCovariance :md5sum-) "48c0d78e262fa72b14e49d79a40893ba")
(setf (get tuw_geometry_msgs::WeightedPoseWithCovariance :datatype-) "tuw_geometry_msgs/WeightedPoseWithCovariance")
(setf (get tuw_geometry_msgs::WeightedPoseWithCovariance :definition-)
      "# This represents a pose in free space with uncertainty and a scoring weight.

geometry_msgs/Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

# [0, 1] weight of the pose, used for scoring a pose particle
float64 weight

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



(provide :tuw_geometry_msgs/WeightedPoseWithCovariance "48c0d78e262fa72b14e49d79a40893ba")


