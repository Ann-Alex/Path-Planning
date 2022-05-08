;; Auto-generated. Do not edit!


(when (boundp 'tuw_nav_msgs::BaseConstr)
  (if (not (find-package "TUW_NAV_MSGS"))
    (make-package "TUW_NAV_MSGS"))
  (shadow 'BaseConstr (find-package "TUW_NAV_MSGS")))
(unless (find-package "TUW_NAV_MSGS::BASECONSTR")
  (make-package "TUW_NAV_MSGS::BASECONSTR"))

(in-package "ROS")
;;//! \htmlinclude BaseConstr.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_nav_msgs::BaseConstr
  :super ros::object
  :slots (_header _v_max _av_max _w_max _aw_max _omg_wh_max ))

(defmethod tuw_nav_msgs::BaseConstr
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:v_max __v_max) 0.0)
    ((:av_max __av_max) 0.0)
    ((:w_max __w_max) 0.0)
    ((:aw_max __aw_max) 0.0)
    ((:omg_wh_max __omg_wh_max) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _v_max (float __v_max))
   (setq _av_max (float __av_max))
   (setq _w_max (float __w_max))
   (setq _aw_max (float __aw_max))
   (setq _omg_wh_max (float __omg_wh_max))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:v_max
   (&optional __v_max)
   (if __v_max (setq _v_max __v_max)) _v_max)
  (:av_max
   (&optional __av_max)
   (if __av_max (setq _av_max __av_max)) _av_max)
  (:w_max
   (&optional __w_max)
   (if __w_max (setq _w_max __w_max)) _w_max)
  (:aw_max
   (&optional __aw_max)
   (if __aw_max (setq _aw_max __aw_max)) _aw_max)
  (:omg_wh_max
   (&optional __omg_wh_max)
   (if __omg_wh_max (setq _omg_wh_max __omg_wh_max)) _omg_wh_max)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _v_max
    8
    ;; float64 _av_max
    8
    ;; float64 _w_max
    8
    ;; float64 _aw_max
    8
    ;; float64 _omg_wh_max
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _v_max
       (sys::poke _v_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _av_max
       (sys::poke _av_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w_max
       (sys::poke _w_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _aw_max
       (sys::poke _aw_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omg_wh_max
       (sys::poke _omg_wh_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _v_max
     (setq _v_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _av_max
     (setq _av_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w_max
     (setq _w_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _aw_max
     (setq _aw_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omg_wh_max
     (setq _omg_wh_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tuw_nav_msgs::BaseConstr :md5sum-) "3889ce5233d8459f082e82157699ce5e")
(setf (get tuw_nav_msgs::BaseConstr :datatype-) "tuw_nav_msgs/BaseConstr")
(setf (get tuw_nav_msgs::BaseConstr :definition-)
      "Header header
float64 v_max
float64 av_max
float64 w_max
float64 aw_max
float64 omg_wh_max

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



(provide :tuw_nav_msgs/BaseConstr "3889ce5233d8459f082e82157699ce5e")


