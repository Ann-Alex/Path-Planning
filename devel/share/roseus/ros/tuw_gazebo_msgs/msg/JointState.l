;; Auto-generated. Do not edit!


(when (boundp 'tuw_gazebo_msgs::JointState)
  (if (not (find-package "TUW_GAZEBO_MSGS"))
    (make-package "TUW_GAZEBO_MSGS"))
  (shadow 'JointState (find-package "TUW_GAZEBO_MSGS")))
(unless (find-package "TUW_GAZEBO_MSGS::JOINTSTATE")
  (make-package "TUW_GAZEBO_MSGS::JOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude JointState.msg.html


(defclass tuw_gazebo_msgs::JointState
  :super ros::object
  :slots (_x _xdot _xddot ))

(defmethod tuw_gazebo_msgs::JointState
  (:init
   (&key
    ((:x __x) 0.0)
    ((:xdot __xdot) 0.0)
    ((:xddot __xddot) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _xdot (float __xdot))
   (setq _xddot (float __xddot))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:xdot
   (&optional __xdot)
   (if __xdot (setq _xdot __xdot)) _xdot)
  (:xddot
   (&optional __xddot)
   (if __xddot (setq _xddot __xddot)) _xddot)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _xdot
    8
    ;; float64 _xddot
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xdot
       (sys::poke _xdot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xddot
       (sys::poke _xddot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xdot
     (setq _xdot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xddot
     (setq _xddot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tuw_gazebo_msgs::JointState :md5sum-) "640c08b997ef5ea0a1e6b2142dbc0465")
(setf (get tuw_gazebo_msgs::JointState :datatype-) "tuw_gazebo_msgs/JointState")
(setf (get tuw_gazebo_msgs::JointState :definition-)
      "float64 x
float64 xdot
float64 xddot

")



(provide :tuw_gazebo_msgs/JointState "640c08b997ef5ea0a1e6b2142dbc0465")


