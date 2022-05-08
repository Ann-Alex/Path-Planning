;; Auto-generated. Do not edit!


(when (boundp 'tuw_airskin_msgs::AirskinInfo)
  (if (not (find-package "TUW_AIRSKIN_MSGS"))
    (make-package "TUW_AIRSKIN_MSGS"))
  (shadow 'AirskinInfo (find-package "TUW_AIRSKIN_MSGS")))
(unless (find-package "TUW_AIRSKIN_MSGS::AIRSKININFO")
  (make-package "TUW_AIRSKIN_MSGS::AIRSKININFO"))

(in-package "ROS")
;;//! \htmlinclude AirskinInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_airskin_msgs::AirskinInfo
  :super ros::object
  :slots (_header _ids _names _min _max ))

(defmethod tuw_airskin_msgs::AirskinInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :char))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:min __min) (make-array 0 :initial-element 0 :element-type :integer))
    ((:max __max) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ids __ids)
   (setq _names __names)
   (setq _min __min)
   (setq _max __max)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _ids
    (* 1    (length _ids)) 4
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; uint32[] _min
    (* 4    (length _min)) 4
    ;; uint32[] _max
    (* 4    (length _max)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _ids
     (write-long (length _ids) s)
     (princ _ids s)
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32[] _min
     (write-long (length _min) s)
     (dotimes (i (length _min))
       (write-long (elt _min i) s)
       )
     ;; uint32[] _max
     (write-long (length _max) s)
     (dotimes (i (length _max))
       (write-long (elt _max i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _ids
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _ids (make-array n :element-type :char))
     (replace _ids buf :start2 ptr-) (incf ptr- n))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint32[] _min
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _min (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _min i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _max
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _max i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get tuw_airskin_msgs::AirskinInfo :md5sum-) "14394f7dbdb0d73a010ea995f889c657")
(setf (get tuw_airskin_msgs::AirskinInfo :datatype-) "tuw_airskin_msgs/AirskinInfo")
(setf (get tuw_airskin_msgs::AirskinInfo :definition-)
      "# This expresses a set of AirSkin pad pressures
Header header                  # timestamp in the header is the acquisition time and frame

uint8[] ids                    # I2C ids of target AirSkin pads
string[] names                 # names and TF frames names of corresponding AirSkin pads
uint32[] min                   # pressure min value
uint32[] max                   # pressure max value

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



(provide :tuw_airskin_msgs/AirskinInfo "14394f7dbdb0d73a010ea995f889c657")


