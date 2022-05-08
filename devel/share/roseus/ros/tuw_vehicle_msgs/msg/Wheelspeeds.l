;; Auto-generated. Do not edit!


(when (boundp 'tuw_vehicle_msgs::Wheelspeeds)
  (if (not (find-package "TUW_VEHICLE_MSGS"))
    (make-package "TUW_VEHICLE_MSGS"))
  (shadow 'Wheelspeeds (find-package "TUW_VEHICLE_MSGS")))
(unless (find-package "TUW_VEHICLE_MSGS::WHEELSPEEDS")
  (make-package "TUW_VEHICLE_MSGS::WHEELSPEEDS"))

(in-package "ROS")
;;//! \htmlinclude Wheelspeeds.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_vehicle_msgs::Wheelspeeds
  :super ros::object
  :slots (_header _fr _fl _rr _rl ))

(defmethod tuw_vehicle_msgs::Wheelspeeds
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fr __fr) 0.0)
    ((:fl __fl) 0.0)
    ((:rr __rr) 0.0)
    ((:rl __rl) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fr (float __fr))
   (setq _fl (float __fl))
   (setq _rr (float __rr))
   (setq _rl (float __rl))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fr
   (&optional __fr)
   (if __fr (setq _fr __fr)) _fr)
  (:fl
   (&optional __fl)
   (if __fl (setq _fl __fl)) _fl)
  (:rr
   (&optional __rr)
   (if __rr (setq _rr __rr)) _rr)
  (:rl
   (&optional __rl)
   (if __rl (setq _rl __rl)) _rl)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _fr
    8
    ;; float64 _fl
    8
    ;; float64 _rr
    8
    ;; float64 _rl
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _fr
       (sys::poke _fr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fl
       (sys::poke _fl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rr
       (sys::poke _rr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rl
       (sys::poke _rl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _fr
     (setq _fr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fl
     (setq _fl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rr
     (setq _rr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rl
     (setq _rl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tuw_vehicle_msgs::Wheelspeeds :md5sum-) "97e7e563294a622cb3b90a90337982da")
(setf (get tuw_vehicle_msgs::Wheelspeeds :datatype-) "tuw_vehicle_msgs/Wheelspeeds")
(setf (get tuw_vehicle_msgs::Wheelspeeds :definition-)
      "Header header
# speed of the front right wheel in rpm
float64 fr
# speed of the front left wheel in rpm
float64 fl
# speed of the rear right wheel in rpm
float64 rr
# speed of the rear left wheel in rpm
float64 rl

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



(provide :tuw_vehicle_msgs/Wheelspeeds "97e7e563294a622cb3b90a90337982da")


