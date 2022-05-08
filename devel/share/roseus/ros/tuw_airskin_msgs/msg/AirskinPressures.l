;; Auto-generated. Do not edit!


(when (boundp 'tuw_airskin_msgs::AirskinPressures)
  (if (not (find-package "TUW_AIRSKIN_MSGS"))
    (make-package "TUW_AIRSKIN_MSGS"))
  (shadow 'AirskinPressures (find-package "TUW_AIRSKIN_MSGS")))
(unless (find-package "TUW_AIRSKIN_MSGS::AIRSKINPRESSURES")
  (make-package "TUW_AIRSKIN_MSGS::AIRSKINPRESSURES"))

(in-package "ROS")
;;//! \htmlinclude AirskinPressures.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_airskin_msgs::AirskinPressures
  :super ros::object
  :slots (_header _pressures ))

(defmethod tuw_airskin_msgs::AirskinPressures
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pressures __pressures) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pressures __pressures)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pressures
   (&optional __pressures)
   (if __pressures (setq _pressures __pressures)) _pressures)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _pressures
    (* 4    (length _pressures)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _pressures
     (write-long (length _pressures) s)
     (dotimes (i (length _pressures))
       (write-long (elt _pressures i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[] _pressures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pressures (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pressures i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get tuw_airskin_msgs::AirskinPressures :md5sum-) "48f413c906b9a36e09c9d0c4a7801786")
(setf (get tuw_airskin_msgs::AirskinPressures :datatype-) "tuw_airskin_msgs/AirskinPressures")
(setf (get tuw_airskin_msgs::AirskinPressures :definition-)
      "# This expresses a set of AirSkin pad pressures
Header header                  # timestamp in the header is the acquisition time and frame
uint32[] pressures             # pressure values of corresponding AirSkin pads

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



(provide :tuw_airskin_msgs/AirskinPressures "48f413c906b9a36e09c9d0c4a7801786")


