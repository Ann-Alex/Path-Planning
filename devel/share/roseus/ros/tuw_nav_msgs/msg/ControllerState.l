;; Auto-generated. Do not edit!


(when (boundp 'tuw_nav_msgs::ControllerState)
  (if (not (find-package "TUW_NAV_MSGS"))
    (make-package "TUW_NAV_MSGS"))
  (shadow 'ControllerState (find-package "TUW_NAV_MSGS")))
(unless (find-package "TUW_NAV_MSGS::CONTROLLERSTATE")
  (make-package "TUW_NAV_MSGS::CONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude ControllerState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATE_IDLE*" (find-package "TUW_NAV_MSGS::CONTROLLERSTATE"))
(shadow '*STATE_IDLE* (find-package "TUW_NAV_MSGS::CONTROLLERSTATE"))
(defconstant tuw_nav_msgs::ControllerState::*STATE_IDLE* 0)
(intern "*STATE_DRIVING*" (find-package "TUW_NAV_MSGS::CONTROLLERSTATE"))
(shadow '*STATE_DRIVING* (find-package "TUW_NAV_MSGS::CONTROLLERSTATE"))
(defconstant tuw_nav_msgs::ControllerState::*STATE_DRIVING* 1)
(intern "*STATE_FINISHED*" (find-package "TUW_NAV_MSGS::CONTROLLERSTATE"))
(shadow '*STATE_FINISHED* (find-package "TUW_NAV_MSGS::CONTROLLERSTATE"))
(defconstant tuw_nav_msgs::ControllerState::*STATE_FINISHED* 2)

(defun tuw_nav_msgs::ControllerState-to-symbol (const)
  (cond
        ((= const 0) 'tuw_nav_msgs::ControllerState::*STATE_IDLE*)
        ((= const 1) 'tuw_nav_msgs::ControllerState::*STATE_DRIVING*)
        ((= const 2) 'tuw_nav_msgs::ControllerState::*STATE_FINISHED*)
        (t nil)))

(defclass tuw_nav_msgs::ControllerState
  :super ros::object
  :slots (_header _state _progress _progress_in_relation_to _info ))

(defmethod tuw_nav_msgs::ControllerState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    ((:progress __progress) 0)
    ((:progress_in_relation_to __progress_in_relation_to) 0)
    ((:info __info) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   (setq _progress (round __progress))
   (setq _progress_in_relation_to (round __progress_in_relation_to))
   (setq _info (string __info))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:progress_in_relation_to
   (&optional __progress_in_relation_to)
   (if __progress_in_relation_to (setq _progress_in_relation_to __progress_in_relation_to)) _progress_in_relation_to)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _state
    4
    ;; uint32 _progress
    4
    ;; uint32 _progress_in_relation_to
    4
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _state
       (write-long _state s)
     ;; uint32 _progress
       (write-long _progress s)
     ;; uint32 _progress_in_relation_to
       (write-long _progress_in_relation_to s)
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _progress
     (setq _progress (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _progress_in_relation_to
     (setq _progress_in_relation_to (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tuw_nav_msgs::ControllerState :md5sum-) "3b05c4f3aa52d3fdb601c8ae8cd5811b")
(setf (get tuw_nav_msgs::ControllerState :datatype-) "tuw_nav_msgs/ControllerState")
(setf (get tuw_nav_msgs::ControllerState :definition-)
      "#################################################################
## Progress/State of a trajectory controller
#################################################################


Header header                  # header, ...
int32  state                   # controller state
uint32 progress                # passed waypoints 
uint32 progress_in_relation_to # id / seq nummer in oder to put the progess in realtion to a waypoint msg or spline msg
string info                    # details on the controller state in human form for debugging only 



int32 STATE_IDLE = 0                 # controller is inactive
int32 STATE_DRIVING = 1              # controller is driving and following a path
int32 STATE_FINISHED = 2             # controller finished a path

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



(provide :tuw_nav_msgs/ControllerState "3b05c4f3aa52d3fdb601c8ae8cd5811b")


