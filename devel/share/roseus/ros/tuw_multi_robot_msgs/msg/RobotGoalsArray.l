;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::RobotGoalsArray)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'RobotGoalsArray (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTGOALSARRAY")
  (make-package "TUW_MULTI_ROBOT_MSGS::ROBOTGOALSARRAY"))

(in-package "ROS")
;;//! \htmlinclude RobotGoalsArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_multi_robot_msgs::RobotGoalsArray
  :super ros::object
  :slots (_header _robots ))

(defmethod tuw_multi_robot_msgs::RobotGoalsArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robots __robots) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _robots __robots)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robots
   (&rest __robots)
   (if (keywordp (car __robots))
       (send* _robots __robots)
     (progn
       (if __robots (setq _robots (car __robots)))
       _robots)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tuw_multi_robot_msgs/RobotGoals[] _robots
    (apply #'+ (send-all _robots :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tuw_multi_robot_msgs/RobotGoals[] _robots
     (write-long (length _robots) s)
     (dolist (elem _robots)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tuw_multi_robot_msgs/RobotGoals[] _robots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots (let (r) (dotimes (i n) (push (instance tuw_multi_robot_msgs::RobotGoals :init) r)) r))
     (dolist (elem- _robots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::RobotGoalsArray :md5sum-) "fc2eb26a2ff374e1463f5f8d67447cca")
(setf (get tuw_multi_robot_msgs::RobotGoalsArray :datatype-) "tuw_multi_robot_msgs/RobotGoalsArray")
(setf (get tuw_multi_robot_msgs::RobotGoalsArray :definition-)
      "#################################################################
## Used to send goal requests for multiple robots to the multi robot planner
#################################################################

Header header        # the time of the generation
RobotGoals[] robots  # contains a goals/checkpoints for each robot

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
MSG: tuw_multi_robot_msgs/RobotGoals
#################################################################
## used to describe a set of destinations for a robot
## robot_name is used as id and often used as namespace for topics
#################################################################

string robot_name                   # the name of the robot
geometry_msgs/Pose[] destinations   # Describes a set of destinations, where the last one is the final goal of the trip
                                    # if there are more than one destinations the first one is the start pose
                                    # else the current pose of the robot is used as start
 
 


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :tuw_multi_robot_msgs/RobotGoalsArray "fc2eb26a2ff374e1463f5f8d67447cca")


