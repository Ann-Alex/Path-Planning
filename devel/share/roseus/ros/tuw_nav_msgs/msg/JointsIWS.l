;; Auto-generated. Do not edit!


(when (boundp 'tuw_nav_msgs::JointsIWS)
  (if (not (find-package "TUW_NAV_MSGS"))
    (make-package "TUW_NAV_MSGS"))
  (shadow 'JointsIWS (find-package "TUW_NAV_MSGS")))
(unless (find-package "TUW_NAV_MSGS::JOINTSIWS")
  (make-package "TUW_NAV_MSGS::JOINTSIWS"))

(in-package "ROS")
;;//! \htmlinclude JointsIWS.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_nav_msgs::JointsIWS
  :super ros::object
  :slots (_header _type_steering _type_revolute _steering _revolute ))

(defmethod tuw_nav_msgs::JointsIWS
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type_steering __type_steering) "")
    ((:type_revolute __type_revolute) "")
    ((:steering __steering) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:revolute __revolute) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type_steering (string __type_steering))
   (setq _type_revolute (string __type_revolute))
   (setq _steering __steering)
   (setq _revolute __revolute)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type_steering
   (&optional __type_steering)
   (if __type_steering (setq _type_steering __type_steering)) _type_steering)
  (:type_revolute
   (&optional __type_revolute)
   (if __type_revolute (setq _type_revolute __type_revolute)) _type_revolute)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:revolute
   (&optional __revolute)
   (if __revolute (setq _revolute __revolute)) _revolute)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type_steering
    4 (length _type_steering)
    ;; string _type_revolute
    4 (length _type_revolute)
    ;; float64[] _steering
    (* 8    (length _steering)) 4
    ;; float64[] _revolute
    (* 8    (length _revolute)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type_steering
       (write-long (length _type_steering) s) (princ _type_steering s)
     ;; string _type_revolute
       (write-long (length _type_revolute) s) (princ _type_revolute s)
     ;; float64[] _steering
     (write-long (length _steering) s)
     (dotimes (i (length _steering))
       (sys::poke (elt _steering i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _revolute
     (write-long (length _revolute) s)
     (dotimes (i (length _revolute))
       (sys::poke (elt _revolute i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type_steering
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type_steering (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type_revolute
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type_revolute (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _steering
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _steering (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _steering i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _revolute
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _revolute (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _revolute i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get tuw_nav_msgs::JointsIWS :md5sum-) "a2f4c6789d90337c4c6bcd925166ca7c")
(setf (get tuw_nav_msgs::JointsIWS :datatype-) "tuw_nav_msgs/JointsIWS")
(setf (get tuw_nav_msgs::JointsIWS :definition-)
      "#Message for sensing/control of an indepenend N wheel steering platform 
Header header

#the type defines the usage and units such as cmd_torque, cmd_acceleration, cmd_velocity, cmd_position, measured_torque, measured_acceleration, measured_velocity, measured_position
string type_steering
string type_revolute 

#actual sensing/control variables of the defined type
float64[] steering
float64[] revolute
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



(provide :tuw_nav_msgs/JointsIWS "a2f4c6789d90337c4c6bcd925166ca7c")


