;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::RobotGoals)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'RobotGoals (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTGOALS")
  (make-package "TUW_MULTI_ROBOT_MSGS::ROBOTGOALS"))

(in-package "ROS")
;;//! \htmlinclude RobotGoals.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tuw_multi_robot_msgs::RobotGoals
  :super ros::object
  :slots (_robot_name _destinations ))

(defmethod tuw_multi_robot_msgs::RobotGoals
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:destinations __destinations) ())
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _destinations __destinations)
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:destinations
   (&rest __destinations)
   (if (keywordp (car __destinations))
       (send* _destinations __destinations)
     (progn
       (if __destinations (setq _destinations (car __destinations)))
       _destinations)))
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; geometry_msgs/Pose[] _destinations
    (apply #'+ (send-all _destinations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; geometry_msgs/Pose[] _destinations
     (write-long (length _destinations) s)
     (dolist (elem _destinations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose[] _destinations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _destinations (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _destinations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::RobotGoals :md5sum-) "b8f37aa499812d58bbe5ed4a6053d837")
(setf (get tuw_multi_robot_msgs::RobotGoals :datatype-) "tuw_multi_robot_msgs/RobotGoals")
(setf (get tuw_multi_robot_msgs::RobotGoals :definition-)
      "#################################################################
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



(provide :tuw_multi_robot_msgs/RobotGoals "b8f37aa499812d58bbe5ed4a6053d837")


