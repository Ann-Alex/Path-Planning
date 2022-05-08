;; Auto-generated. Do not edit!


(when (boundp 'tuw_gazebo_msgs::JointsCmdI4ws)
  (if (not (find-package "TUW_GAZEBO_MSGS"))
    (make-package "TUW_GAZEBO_MSGS"))
  (shadow 'JointsCmdI4ws (find-package "TUW_GAZEBO_MSGS")))
(unless (find-package "TUW_GAZEBO_MSGS::JOINTSCMDI4WS")
  (make-package "TUW_GAZEBO_MSGS::JOINTSCMDI4WS"))

(in-package "ROS")
;;//! \htmlinclude JointsCmdI4ws.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_gazebo_msgs::JointsCmdI4ws
  :super ros::object
  :slots (_header _cmd ))

(defmethod tuw_gazebo_msgs::JointsCmdI4ws
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cmd __cmd) (let (r) (dotimes (i 8) (push (instance tuw_gazebo_msgs::JointCmd :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cmd __cmd)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cmd
   (&rest __cmd)
   (if (keywordp (car __cmd))
       (send* _cmd __cmd)
     (progn
       (if __cmd (setq _cmd (car __cmd)))
       _cmd)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tuw_gazebo_msgs/JointCmd[8] _cmd
    (apply #'+ (send-all _cmd :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tuw_gazebo_msgs/JointCmd[8] _cmd
     (dolist (elem _cmd)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tuw_gazebo_msgs/JointCmd[8] _cmd
   (dotimes (i 8)
     (send (elt _cmd i) :deserialize buf ptr-) (incf ptr- (send (elt _cmd i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get tuw_gazebo_msgs::JointsCmdI4ws :md5sum-) "f73647fd5aebcac5be306d55704f0b9a")
(setf (get tuw_gazebo_msgs::JointsCmdI4ws :datatype-) "tuw_gazebo_msgs/JointsCmdI4ws")
(setf (get tuw_gazebo_msgs::JointsCmdI4ws :definition-)
      "Header header
JointCmd[8] cmd

#Those are the 8 joints in order

#JointCmd steer_tr
#JointCmd steer_tl
#JointCmd steer_br
#JointCmd steer_bl

#JointCmd wheel_tr
#JointCmd wheel_tl
#JointCmd wheel_br
#JointCmd wheel_bl

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
MSG: tuw_gazebo_msgs/JointCmd
float64 u

")



(provide :tuw_gazebo_msgs/JointsCmdI4ws "f73647fd5aebcac5be306d55704f0b9a")


