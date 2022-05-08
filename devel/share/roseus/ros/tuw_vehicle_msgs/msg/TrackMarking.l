;; Auto-generated. Do not edit!


(when (boundp 'tuw_vehicle_msgs::TrackMarking)
  (if (not (find-package "TUW_VEHICLE_MSGS"))
    (make-package "TUW_VEHICLE_MSGS"))
  (shadow 'TrackMarking (find-package "TUW_VEHICLE_MSGS")))
(unless (find-package "TUW_VEHICLE_MSGS::TRACKMARKING")
  (make-package "TUW_VEHICLE_MSGS::TRACKMARKING"))

(in-package "ROS")
;;//! \htmlinclude TrackMarking.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*TRACK_MARKING_TYPE_UNKNOWN*" (find-package "TUW_VEHICLE_MSGS::TRACKMARKING"))
(shadow '*TRACK_MARKING_TYPE_UNKNOWN* (find-package "TUW_VEHICLE_MSGS::TRACKMARKING"))
(defconstant tuw_vehicle_msgs::TrackMarking::*TRACK_MARKING_TYPE_UNKNOWN* 0)
(intern "*TRACK_MARKING_TYPE_LEFT*" (find-package "TUW_VEHICLE_MSGS::TRACKMARKING"))
(shadow '*TRACK_MARKING_TYPE_LEFT* (find-package "TUW_VEHICLE_MSGS::TRACKMARKING"))
(defconstant tuw_vehicle_msgs::TrackMarking::*TRACK_MARKING_TYPE_LEFT* 1)
(intern "*TRACK_MARKING_TYPE_RIGHT*" (find-package "TUW_VEHICLE_MSGS::TRACKMARKING"))
(shadow '*TRACK_MARKING_TYPE_RIGHT* (find-package "TUW_VEHICLE_MSGS::TRACKMARKING"))
(defconstant tuw_vehicle_msgs::TrackMarking::*TRACK_MARKING_TYPE_RIGHT* 2)
(intern "*TRACK_MARKING_TYPE_START_STOP*" (find-package "TUW_VEHICLE_MSGS::TRACKMARKING"))
(shadow '*TRACK_MARKING_TYPE_START_STOP* (find-package "TUW_VEHICLE_MSGS::TRACKMARKING"))
(defconstant tuw_vehicle_msgs::TrackMarking::*TRACK_MARKING_TYPE_START_STOP* 4)

(defun tuw_vehicle_msgs::TrackMarking-to-symbol (const)
  (cond
        ((= const 0) 'tuw_vehicle_msgs::TrackMarking::*TRACK_MARKING_TYPE_UNKNOWN*)
        ((= const 1) 'tuw_vehicle_msgs::TrackMarking::*TRACK_MARKING_TYPE_LEFT*)
        ((= const 2) 'tuw_vehicle_msgs::TrackMarking::*TRACK_MARKING_TYPE_RIGHT*)
        ((= const 4) 'tuw_vehicle_msgs::TrackMarking::*TRACK_MARKING_TYPE_START_STOP*)
        (t nil)))

(defclass tuw_vehicle_msgs::TrackMarking
  :super ros::object
  :slots (_pose _type ))

(defmethod tuw_vehicle_msgs::TrackMarking
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _type (round __type))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tuw_vehicle_msgs::TrackMarking :md5sum-) "648cedcb83e283b2403b91f87175eb19")
(setf (get tuw_vehicle_msgs::TrackMarking :datatype-) "tuw_vehicle_msgs/TrackMarking")
(setf (get tuw_vehicle_msgs::TrackMarking :definition-)
      "# single marking on the track

# position of the marking in space, as well as normal angle along the racetrack path
geometry_msgs/Pose2D pose

# type of track marking
uint8 type

uint8 TRACK_MARKING_TYPE_UNKNOWN = 0
uint8 TRACK_MARKING_TYPE_LEFT = 1
uint8 TRACK_MARKING_TYPE_RIGHT = 2
uint8 TRACK_MARKING_TYPE_START_STOP = 4

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :tuw_vehicle_msgs/TrackMarking "648cedcb83e283b2403b91f87175eb19")


