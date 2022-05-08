;; Auto-generated. Do not edit!


(when (boundp 'tuw_vehicle_msgs::CmdMpcVecVphi)
  (if (not (find-package "TUW_VEHICLE_MSGS"))
    (make-package "TUW_VEHICLE_MSGS"))
  (shadow 'CmdMpcVecVphi (find-package "TUW_VEHICLE_MSGS")))
(unless (find-package "TUW_VEHICLE_MSGS::CMDMPCVECVPHI")
  (make-package "TUW_VEHICLE_MSGS::CMDMPCVECVPHI"))

(in-package "ROS")
;;//! \htmlinclude CmdMpcVecVphi.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_vehicle_msgs::CmdMpcVecVphi
  :super ros::object
  :slots (_header _v _p _d_tv _d_tp _state0 ))

(defmethod tuw_vehicle_msgs::CmdMpcVecVphi
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:v __v) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:p __p) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:d_tv __d_tv) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:d_tp __d_tp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:state0 __state0) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _v __v)
   (setq _p __p)
   (setq _d_tv __d_tv)
   (setq _d_tp __d_tp)
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
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:d_tv
   (&optional __d_tv)
   (if __d_tv (setq _d_tv __d_tv)) _d_tv)
  (:d_tp
   (&optional __d_tp)
   (if __d_tp (setq _d_tp __d_tp)) _d_tp)
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
    ;; float64[] _p
    (* 8    (length _p)) 4
    ;; float64[] _d_tv
    (* 8    (length _d_tv)) 4
    ;; float64[] _d_tp
    (* 8    (length _d_tp)) 4
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
     ;; float64[] _p
     (write-long (length _p) s)
     (dotimes (i (length _p))
       (sys::poke (elt _p i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _d_tv
     (write-long (length _d_tv) s)
     (dotimes (i (length _d_tv))
       (sys::poke (elt _d_tv i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _d_tp
     (write-long (length _d_tp) s)
     (dotimes (i (length _d_tp))
       (sys::poke (elt _d_tp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[] _p
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _p (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _p i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _d_tv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _d_tv (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _d_tv i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _d_tp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _d_tp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _d_tp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(setf (get tuw_vehicle_msgs::CmdMpcVecVphi :md5sum-) "47cbbdeab2d846ecbac96b455035969a")
(setf (get tuw_vehicle_msgs::CmdMpcVecVphi :datatype-) "tuw_vehicle_msgs/CmdMpcVecVphi")
(setf (get tuw_vehicle_msgs::CmdMpcVecVphi :definition-)
      "Header header
float64[] v
float64[] p
float64[] d_tv
float64[] d_tp

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



(provide :tuw_vehicle_msgs/CmdMpcVecVphi "47cbbdeab2d846ecbac96b455035969a")


