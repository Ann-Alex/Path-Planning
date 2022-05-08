;; Auto-generated. Do not edit!


(when (boundp 'tuw_nav_msgs::DiffDriveCmdVWVec)
  (if (not (find-package "TUW_NAV_MSGS"))
    (make-package "TUW_NAV_MSGS"))
  (shadow 'DiffDriveCmdVWVec (find-package "TUW_NAV_MSGS")))
(unless (find-package "TUW_NAV_MSGS::DIFFDRIVECMDVWVEC")
  (make-package "TUW_NAV_MSGS::DIFFDRIVECMDVWVEC"))

(in-package "ROS")
;;//! \htmlinclude DiffDriveCmdVWVec.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_nav_msgs::DiffDriveCmdVWVec
  :super ros::object
  :slots (_header _v _w _delta_t _state0 ))

(defmethod tuw_nav_msgs::DiffDriveCmdVWVec
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:v __v) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:w __w) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:delta_t __delta_t) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:state0 __state0) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _v __v)
   (setq _w __w)
   (setq _delta_t __delta_t)
   (setq _state0 __state0)
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
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:delta_t
   (&optional __delta_t)
   (if __delta_t (setq _delta_t __delta_t)) _delta_t)
  (:state0
   (&optional __state0)
   (if __state0 (setq _state0 __state0)) _state0)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _v
    (* 8    (length _v)) 4
    ;; float64[] _w
    (* 8    (length _w)) 4
    ;; float64[] _delta_t
    (* 8    (length _delta_t)) 4
    ;; float64[] _state0
    (* 8    (length _state0)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _v
     (write-long (length _v) s)
     (dotimes (i (length _v))
       (sys::poke (elt _v i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _w
     (write-long (length _w) s)
     (dotimes (i (length _w))
       (sys::poke (elt _w i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _delta_t
     (write-long (length _delta_t) s)
     (dotimes (i (length _delta_t))
       (sys::poke (elt _delta_t i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _state0
     (write-long (length _state0) s)
     (dotimes (i (length _state0))
       (sys::poke (elt _state0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _v
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _w
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _w (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _w i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _delta_t
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _delta_t (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _delta_t i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _state0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _state0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get tuw_nav_msgs::DiffDriveCmdVWVec :md5sum-) "18fbbb38ab2e9b00cd6cfe561757ff19")
(setf (get tuw_nav_msgs::DiffDriveCmdVWVec :datatype-) "tuw_nav_msgs/DiffDriveCmdVWVec")
(setf (get tuw_nav_msgs::DiffDriveCmdVWVec :definition-)
      "Header header
float64[] v
float64[] w
float64[] delta_t

float64[] state0

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



(provide :tuw_nav_msgs/DiffDriveCmdVWVec "18fbbb38ab2e9b00cd6cfe561757ff19")


