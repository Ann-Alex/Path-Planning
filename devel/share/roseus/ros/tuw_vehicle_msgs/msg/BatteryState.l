;; Auto-generated. Do not edit!


(when (boundp 'tuw_vehicle_msgs::BatteryState)
  (if (not (find-package "TUW_VEHICLE_MSGS"))
    (make-package "TUW_VEHICLE_MSGS"))
  (shadow 'BatteryState (find-package "TUW_VEHICLE_MSGS")))
(unless (find-package "TUW_VEHICLE_MSGS::BATTERYSTATE")
  (make-package "TUW_VEHICLE_MSGS::BATTERYSTATE"))

(in-package "ROS")
;;//! \htmlinclude BatteryState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_vehicle_msgs::BatteryState
  :super ros::object
  :slots (_header _current _cell_voltages _cell_temperatures ))

(defmethod tuw_vehicle_msgs::BatteryState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current __current) 0.0)
    ((:cell_voltages __cell_voltages) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cell_temperatures __cell_temperatures) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _current (float __current))
   (setq _cell_voltages __cell_voltages)
   (setq _cell_temperatures __cell_temperatures)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:cell_voltages
   (&optional __cell_voltages)
   (if __cell_voltages (setq _cell_voltages __cell_voltages)) _cell_voltages)
  (:cell_temperatures
   (&optional __cell_temperatures)
   (if __cell_temperatures (setq _cell_temperatures __cell_temperatures)) _cell_temperatures)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _current
    4
    ;; float32[] _cell_voltages
    (* 4    (length _cell_voltages)) 4
    ;; float32[] _cell_temperatures
    (* 4    (length _cell_temperatures)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _cell_voltages
     (write-long (length _cell_voltages) s)
     (dotimes (i (length _cell_voltages))
       (sys::poke (elt _cell_voltages i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _cell_temperatures
     (write-long (length _cell_temperatures) s)
     (dotimes (i (length _cell_temperatures))
       (sys::poke (elt _cell_temperatures i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _cell_voltages
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cell_voltages (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cell_voltages i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _cell_temperatures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cell_temperatures (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cell_temperatures i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get tuw_vehicle_msgs::BatteryState :md5sum-) "b4b1008fac477387c5d2c56852bbdc2b")
(setf (get tuw_vehicle_msgs::BatteryState :datatype-) "tuw_vehicle_msgs/BatteryState")
(setf (get tuw_vehicle_msgs::BatteryState :definition-)
      "Header header

# positive current for discharging, negative current for charging
float32 current

# cell voltages of single cells
float32[] cell_voltages

# cell temperatures in degrees C
float32[] cell_temperatures

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



(provide :tuw_vehicle_msgs/BatteryState "b4b1008fac477387c5d2c56852bbdc2b")


