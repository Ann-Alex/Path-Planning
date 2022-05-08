;; Auto-generated. Do not edit!


(when (boundp 'tuw_airskin_msgs::AirskinColors)
  (if (not (find-package "TUW_AIRSKIN_MSGS"))
    (make-package "TUW_AIRSKIN_MSGS"))
  (shadow 'AirskinColors (find-package "TUW_AIRSKIN_MSGS")))
(unless (find-package "TUW_AIRSKIN_MSGS::AIRSKINCOLORS")
  (make-package "TUW_AIRSKIN_MSGS::AIRSKINCOLORS"))

(in-package "ROS")
;;//! \htmlinclude AirskinColors.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_airskin_msgs::AirskinColors
  :super ros::object
  :slots (_header _idx _colors ))

(defmethod tuw_airskin_msgs::AirskinColors
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:idx __idx) (make-array 0 :initial-element 0 :element-type :integer))
    ((:colors __colors) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _idx __idx)
   (setq _colors __colors)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:idx
   (&optional __idx)
   (if __idx (setq _idx __idx)) _idx)
  (:colors
   (&rest __colors)
   (if (keywordp (car __colors))
       (send* _colors __colors)
     (progn
       (if __colors (setq _colors (car __colors)))
       _colors)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16[] _idx
    (* 2    (length _idx)) 4
    ;; std_msgs/ColorRGBA[] _colors
    (apply #'+ (send-all _colors :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16[] _idx
     (write-long (length _idx) s)
     (dotimes (i (length _idx))
       (write-word (elt _idx i) s)
       )
     ;; std_msgs/ColorRGBA[] _colors
     (write-long (length _colors) s)
     (dolist (elem _colors)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16[] _idx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idx (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _idx i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; std_msgs/ColorRGBA[] _colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _colors (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _colors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_airskin_msgs::AirskinColors :md5sum-) "89c9873192919e34622afd164f6a8ba5")
(setf (get tuw_airskin_msgs::AirskinColors :datatype-) "tuw_airskin_msgs/AirskinColors")
(setf (get tuw_airskin_msgs::AirskinColors :definition-)
      "# This expresses a set of AirSkin pad colors
Header header                  # timestamp in the header is the acquisition time and frame

uint16[] idx                   # index of the color in the colors array 
                               # if empty the colors array must match the target system
std_msgs/ColorRGBA[] colors    # RGBA color values for corresponding AirSkin pads

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
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :tuw_airskin_msgs/AirskinColors "89c9873192919e34622afd164f6a8ba5")


