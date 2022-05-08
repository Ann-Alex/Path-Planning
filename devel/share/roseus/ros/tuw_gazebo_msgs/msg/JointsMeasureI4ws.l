;; Auto-generated. Do not edit!


(when (boundp 'tuw_gazebo_msgs::JointsMeasureI4ws)
  (if (not (find-package "TUW_GAZEBO_MSGS"))
    (make-package "TUW_GAZEBO_MSGS"))
  (shadow 'JointsMeasureI4ws (find-package "TUW_GAZEBO_MSGS")))
(unless (find-package "TUW_GAZEBO_MSGS::JOINTSMEASUREI4WS")
  (make-package "TUW_GAZEBO_MSGS::JOINTSMEASUREI4WS"))

(in-package "ROS")
;;//! \htmlinclude JointsMeasureI4ws.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_gazebo_msgs::JointsMeasureI4ws
  :super ros::object
  :slots (_header _y ))

(defmethod tuw_gazebo_msgs::JointsMeasureI4ws
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:y __y) (let (r) (dotimes (i 8) (push (instance tuw_gazebo_msgs::Measure :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _y __y)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:y
   (&rest __y)
   (if (keywordp (car __y))
       (send* _y __y)
     (progn
       (if __y (setq _y (car __y)))
       _y)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tuw_gazebo_msgs/Measure[8] _y
    (apply #'+ (send-all _y :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tuw_gazebo_msgs/Measure[8] _y
     (dolist (elem _y)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tuw_gazebo_msgs/Measure[8] _y
   (dotimes (i 8)
     (send (elt _y i) :deserialize buf ptr-) (incf ptr- (send (elt _y i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get tuw_gazebo_msgs::JointsMeasureI4ws :md5sum-) "5452564cebdea4f1fd3dab3f5100ba5f")
(setf (get tuw_gazebo_msgs::JointsMeasureI4ws :datatype-) "tuw_gazebo_msgs/JointsMeasureI4ws")
(setf (get tuw_gazebo_msgs::JointsMeasureI4ws :definition-)
      "Header header
Measure[8] y

#Those are the 8 joints order
#JointState steer_tr
#JointState steer_tl
#JointState steer_br
#JointState steer_bl

#JointState wheel_tr
#JointState wheel_tl
#JointState wheel_br
#JointState wheel_bl

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
MSG: tuw_gazebo_msgs/Measure
float64 x

")



(provide :tuw_gazebo_msgs/JointsMeasureI4ws "5452564cebdea4f1fd3dab3f5100ba5f")


