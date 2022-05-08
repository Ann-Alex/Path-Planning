;; Auto-generated. Do not edit!


(when (boundp 'tuw_gazebo_msgs::JointCmd)
  (if (not (find-package "TUW_GAZEBO_MSGS"))
    (make-package "TUW_GAZEBO_MSGS"))
  (shadow 'JointCmd (find-package "TUW_GAZEBO_MSGS")))
(unless (find-package "TUW_GAZEBO_MSGS::JOINTCMD")
  (make-package "TUW_GAZEBO_MSGS::JOINTCMD"))

(in-package "ROS")
;;//! \htmlinclude JointCmd.msg.html


(defclass tuw_gazebo_msgs::JointCmd
  :super ros::object
  :slots (_u ))

(defmethod tuw_gazebo_msgs::JointCmd
  (:init
   (&key
    ((:u __u) 0.0)
    )
   (send-super :init)
   (setq _u (float __u))
   self)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:serialization-length
   ()
   (+
    ;; float64 _u
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _u
       (sys::poke _u (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _u
     (setq _u (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tuw_gazebo_msgs::JointCmd :md5sum-) "988df341e727ad40b85d2b8acf9471e9")
(setf (get tuw_gazebo_msgs::JointCmd :datatype-) "tuw_gazebo_msgs/JointCmd")
(setf (get tuw_gazebo_msgs::JointCmd :definition-)
      "float64 u

")



(provide :tuw_gazebo_msgs/JointCmd "988df341e727ad40b85d2b8acf9471e9")


