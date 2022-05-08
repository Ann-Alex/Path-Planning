;; Auto-generated. Do not edit!


(when (boundp 'tuw_nav_msgs::Spline)
  (if (not (find-package "TUW_NAV_MSGS"))
    (make-package "TUW_NAV_MSGS"))
  (shadow 'Spline (find-package "TUW_NAV_MSGS")))
(unless (find-package "TUW_NAV_MSGS::SPLINE")
  (make-package "TUW_NAV_MSGS::SPLINE"))

(in-package "ROS")
;;//! \htmlinclude Spline.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_nav_msgs::Spline
  :super ros::object
  :slots (_header _knots _ctrls ))

(defmethod tuw_nav_msgs::Spline
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:knots __knots) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ctrls __ctrls) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _knots __knots)
   (setq _ctrls __ctrls)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:knots
   (&optional __knots)
   (if __knots (setq _knots __knots)) _knots)
  (:ctrls
   (&rest __ctrls)
   (if (keywordp (car __ctrls))
       (send* _ctrls __ctrls)
     (progn
       (if __ctrls (setq _ctrls (car __ctrls)))
       _ctrls)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _knots
    (* 8    (length _knots)) 4
    ;; tuw_nav_msgs/Float64Array[] _ctrls
    (apply #'+ (send-all _ctrls :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _knots
     (write-long (length _knots) s)
     (dotimes (i (length _knots))
       (sys::poke (elt _knots i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; tuw_nav_msgs/Float64Array[] _ctrls
     (write-long (length _ctrls) s)
     (dolist (elem _ctrls)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _knots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _knots (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _knots i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; tuw_nav_msgs/Float64Array[] _ctrls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ctrls (let (r) (dotimes (i n) (push (instance tuw_nav_msgs::Float64Array :init) r)) r))
     (dolist (elem- _ctrls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_nav_msgs::Spline :md5sum-) "5b00a6d2ce6d30ce3d71faff66791a89")
(setf (get tuw_nav_msgs::Spline :datatype-) "tuw_nav_msgs/Spline")
(setf (get tuw_nav_msgs::Spline :definition-)
      "Header header
float64[] knots
Float64Array[] ctrls

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
MSG: tuw_nav_msgs/Float64Array
float64[] val

")



(provide :tuw_nav_msgs/Spline "5b00a6d2ce6d30ce3d71faff66791a89")


