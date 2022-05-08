;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::RouterStatus)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'RouterStatus (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ROUTERSTATUS")
  (make-package "TUW_MULTI_ROBOT_MSGS::ROUTERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RouterStatus.msg.html


(defclass tuw_multi_robot_msgs::RouterStatus
  :super ros::object
  :slots (_id _success _missing_robots _duration _overall_path_length _longest_path_length _priority_scheduling_attemps _speed_scheduling_attemps ))

(defmethod tuw_multi_robot_msgs::RouterStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:success __success) nil)
    ((:missing_robots __missing_robots) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:duration __duration) 0)
    ((:overall_path_length __overall_path_length) 0)
    ((:longest_path_length __longest_path_length) 0)
    ((:priority_scheduling_attemps __priority_scheduling_attemps) 0)
    ((:speed_scheduling_attemps __speed_scheduling_attemps) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _success __success)
   (setq _missing_robots __missing_robots)
   (setq _duration (round __duration))
   (setq _overall_path_length (round __overall_path_length))
   (setq _longest_path_length (round __longest_path_length))
   (setq _priority_scheduling_attemps (round __priority_scheduling_attemps))
   (setq _speed_scheduling_attemps (round __speed_scheduling_attemps))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:missing_robots
   (&optional __missing_robots)
   (if __missing_robots (setq _missing_robots __missing_robots)) _missing_robots)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:overall_path_length
   (&optional __overall_path_length)
   (if __overall_path_length (setq _overall_path_length __overall_path_length)) _overall_path_length)
  (:longest_path_length
   (&optional __longest_path_length)
   (if __longest_path_length (setq _longest_path_length __longest_path_length)) _longest_path_length)
  (:priority_scheduling_attemps
   (&optional __priority_scheduling_attemps)
   (if __priority_scheduling_attemps (setq _priority_scheduling_attemps __priority_scheduling_attemps)) _priority_scheduling_attemps)
  (:speed_scheduling_attemps
   (&optional __speed_scheduling_attemps)
   (if __speed_scheduling_attemps (setq _speed_scheduling_attemps __speed_scheduling_attemps)) _speed_scheduling_attemps)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; bool _success
    1
    ;; string[] _missing_robots
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _missing_robots)) 4
    ;; int32 _duration
    4
    ;; int32 _overall_path_length
    4
    ;; int32 _longest_path_length
    4
    ;; int32 _priority_scheduling_attemps
    4
    ;; int32 _speed_scheduling_attemps
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string[] _missing_robots
     (write-long (length _missing_robots) s)
     (dolist (elem _missing_robots)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32 _duration
       (write-long _duration s)
     ;; int32 _overall_path_length
       (write-long _overall_path_length s)
     ;; int32 _longest_path_length
       (write-long _longest_path_length s)
     ;; int32 _priority_scheduling_attemps
       (write-long _priority_scheduling_attemps s)
     ;; int32 _speed_scheduling_attemps
       (write-long _speed_scheduling_attemps s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _missing_robots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _missing_robots (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _missing_robots i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _overall_path_length
     (setq _overall_path_length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _longest_path_length
     (setq _longest_path_length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _priority_scheduling_attemps
     (setq _priority_scheduling_attemps (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed_scheduling_attemps
     (setq _speed_scheduling_attemps (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::RouterStatus :md5sum-) "155759b83cd058836f14589c98203bee")
(setf (get tuw_multi_robot_msgs::RouterStatus :datatype-) "tuw_multi_robot_msgs/RouterStatus")
(setf (get tuw_multi_robot_msgs::RouterStatus :definition-)
      "#################################################################
## A message to publish the status of the last route 
## generation
#################################################################

int32 id # the unique id of the new plan
bool success # true if a routing table was found to the given scenario
string[] missing_robots # if the plan fails because of absent robots, these robots are listed here
int32 duration # the time until a routing table was found
int32 overall_path_length # the overall path length in the routing table (calculated using weights)
int32 longest_path_length # the longest path length in a routing table (calculated using weights)
int32 priority_scheduling_attemps # shows how often robot priorities are exchanged
int32 speed_scheduling_attemps # shows how many robots speed was reduced during planning
")



(provide :tuw_multi_robot_msgs/RouterStatus "155759b83cd058836f14589c98203bee")


