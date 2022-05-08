;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::RoutePrecondition)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'RoutePrecondition (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ROUTEPRECONDITION")
  (make-package "TUW_MULTI_ROBOT_MSGS::ROUTEPRECONDITION"))

(in-package "ROS")
;;//! \htmlinclude RoutePrecondition.msg.html


(defclass tuw_multi_robot_msgs::RoutePrecondition
  :super ros::object
  :slots (_robot_id _current_route_segment ))

(defmethod tuw_multi_robot_msgs::RoutePrecondition
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:current_route_segment __current_route_segment) 0)
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _current_route_segment (round __current_route_segment))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:current_route_segment
   (&optional __current_route_segment)
   (if __current_route_segment (setq _current_route_segment __current_route_segment)) _current_route_segment)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; int32 _current_route_segment
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; int32 _current_route_segment
       (write-long _current_route_segment s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _current_route_segment
     (setq _current_route_segment (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::RoutePrecondition :md5sum-) "5325912e1dc77bd158888f84bb4b040e")
(setf (get tuw_multi_robot_msgs::RoutePrecondition :datatype-) "tuw_multi_robot_msgs/RoutePrecondition")
(setf (get tuw_multi_robot_msgs::RoutePrecondition :definition-)
      "#################################################################
## Route Preconditions are used to sync robots on a route
## e.g.: Each robot publishes its current step of its route 
## with such a message
## The specific segments of a route are marked with such 
## preconditions to block a robot from entering a segment
## until the sync message of the other robot has the right 
## route_segment_nr
#################################################################

string robot_id                  # the robot name for the precondition 
int32 current_route_segment      # the segment nr of the route executed by the given robot
")



(provide :tuw_multi_robot_msgs/RoutePrecondition "5325912e1dc77bd158888f84bb4b040e")


