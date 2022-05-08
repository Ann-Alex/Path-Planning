;; Auto-generated. Do not edit!


(when (boundp 'tuw_gazebo_msgs::Measure)
  (if (not (find-package "TUW_GAZEBO_MSGS"))
    (make-package "TUW_GAZEBO_MSGS"))
  (shadow 'Measure (find-package "TUW_GAZEBO_MSGS")))
(unless (find-package "TUW_GAZEBO_MSGS::MEASURE")
  (make-package "TUW_GAZEBO_MSGS::MEASURE"))

(in-package "ROS")
;;//! \htmlinclude Measure.msg.html


(defclass tuw_gazebo_msgs::Measure
  :super ros::object
  :slots (_x ))

(defmethod tuw_gazebo_msgs::Measure
  (:init
   (&key
    ((:x __x) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tuw_gazebo_msgs::Measure :md5sum-) "76b81e0561db142e2fc5c30d562dc4be")
(setf (get tuw_gazebo_msgs::Measure :datatype-) "tuw_gazebo_msgs/Measure")
(setf (get tuw_gazebo_msgs::Measure :definition-)
      "float64 x

")



(provide :tuw_gazebo_msgs/Measure "76b81e0561db142e2fc5c30d562dc4be")


