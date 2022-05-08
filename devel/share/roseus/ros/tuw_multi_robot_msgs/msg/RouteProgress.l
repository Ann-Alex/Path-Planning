;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::RouteProgress)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'RouteProgress (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ROUTEPROGRESS")
  (make-package "TUW_MULTI_ROBOT_MSGS::ROUTEPROGRESS"))

(in-package "ROS")
;;//! \htmlinclude RouteProgress.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_multi_robot_msgs::RouteProgress
  :super ros::object
  :slots (_header _passed _current _todo _progress ))

(defmethod tuw_multi_robot_msgs::RouteProgress
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:passed __passed) (make-array 0 :initial-element 0 :element-type :integer))
    ((:current __current) 0)
    ((:todo __todo) (make-array 0 :initial-element 0 :element-type :integer))
    ((:progress __progress) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _passed __passed)
   (setq _current (round __current))
   (setq _todo __todo)
   (setq _progress (float __progress))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:passed
   (&optional __passed)
   (if __passed (setq _passed __passed)) _passed)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:todo
   (&optional __todo)
   (if __todo (setq _todo __todo)) _todo)
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _passed
    (* 4    (length _passed)) 4
    ;; int32 _current
    4
    ;; int32[] _todo
    (* 4    (length _todo)) 4
    ;; float32 _progress
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _passed
     (write-long (length _passed) s)
     (dotimes (i (length _passed))
       (write-long (elt _passed i) s)
       )
     ;; int32 _current
       (write-long _current s)
     ;; int32[] _todo
     (write-long (length _todo) s)
     (dotimes (i (length _todo))
       (write-long (elt _todo i) s)
       )
     ;; float32 _progress
       (sys::poke _progress (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _passed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _passed (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _passed i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _current
     (setq _current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _todo
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _todo (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _todo i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32 _progress
     (setq _progress (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::RouteProgress :md5sum-) "cb4a2dcff1f73fe83b54cde1037fad99")
(setf (get tuw_multi_robot_msgs::RouteProgress :datatype-) "tuw_multi_robot_msgs/RouteProgress")
(setf (get tuw_multi_robot_msgs::RouteProgress :definition-)
      "Header header           
int32[] passed   # A list of already passed route segment id's.
int32 current    # The route segment id where the robot is currently located.
int32[] todo     # A list of route segment id's which will be visited by the robot. If this list is empty, the robot has finished its route.
float32 progress        # The route progress in %.

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



(provide :tuw_multi_robot_msgs/RouteProgress "cb4a2dcff1f73fe83b54cde1037fad99")


