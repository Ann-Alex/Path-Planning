;; Auto-generated. Do not edit!


(when (boundp 'tuw_nav_msgs::IwsCmdVRAT)
  (if (not (find-package "TUW_NAV_MSGS"))
    (make-package "TUW_NAV_MSGS"))
  (shadow 'IwsCmdVRAT (find-package "TUW_NAV_MSGS")))
(unless (find-package "TUW_NAV_MSGS::IWSCMDVRAT")
  (make-package "TUW_NAV_MSGS::IWSCMDVRAT"))

(in-package "ROS")
;;//! \htmlinclude IwsCmdVRAT.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_nav_msgs::IwsCmdVRAT
  :super ros::object
  :slots (_header _v _rho _phi _delta_t ))

(defmethod tuw_nav_msgs::IwsCmdVRAT
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:v __v) 0.0)
    ((:rho __rho) 0.0)
    ((:phi __phi) 0.0)
    ((:delta_t __delta_t) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _v (float __v))
   (setq _rho (float __rho))
   (setq _phi (float __phi))
   (setq _delta_t (float __delta_t))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:rho
   (&optional __rho)
   (if __rho (setq _rho __rho)) _rho)
  (:phi
   (&optional __phi)
   (if __phi (setq _phi __phi)) _phi)
  (:delta_t
   (&optional __delta_t)
   (if __delta_t (setq _delta_t __delta_t)) _delta_t)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _v
    8
    ;; float64 _rho
    8
    ;; float64 _phi
    8
    ;; float64 _delta_t
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rho
       (sys::poke _rho (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _phi
       (sys::poke _phi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _delta_t
       (sys::poke _delta_t (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rho
     (setq _rho (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _phi
     (setq _phi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _delta_t
     (setq _delta_t (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tuw_nav_msgs::IwsCmdVRAT :md5sum-) "0a25151d399ad92baf2fe22212b1dc09")
(setf (get tuw_nav_msgs::IwsCmdVRAT :datatype-) "tuw_nav_msgs/IwsCmdVRAT")
(setf (get tuw_nav_msgs::IwsCmdVRAT :definition-)
      "Header header
float64 v
float64 rho
float64 phi
float64 delta_t

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

")



(provide :tuw_nav_msgs/IwsCmdVRAT "0a25151d399ad92baf2fe22212b1dc09")


