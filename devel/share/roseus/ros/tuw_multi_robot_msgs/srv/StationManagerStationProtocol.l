;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::StationManagerStationProtocol)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'StationManagerStationProtocol (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOL")
  (make-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOL"))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLREQUEST")
  (make-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLREQUEST"))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLRESPONSE")
  (make-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLRESPONSE"))

(in-package "ROS")





(intern "*APPEND*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLREQUEST"))
(shadow '*APPEND* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLREQUEST"))
(defconstant tuw_multi_robot_msgs::StationManagerStationProtocolRequest::*APPEND* "append                          # request to append sent station")
(intern "*REMOVE*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLREQUEST"))
(shadow '*REMOVE* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLREQUEST"))
(defconstant tuw_multi_robot_msgs::StationManagerStationProtocolRequest::*REMOVE* "remove                          # request to remove sent station")

(defun tuw_multi_robot_msgs::StationManagerStationProtocolRequest-to-symbol (const)
  (cond
        (t nil)))

(defclass tuw_multi_robot_msgs::StationManagerStationProtocolRequest
  :super ros::object
  :slots (_request _station ))

(defmethod tuw_multi_robot_msgs::StationManagerStationProtocolRequest
  (:init
   (&key
    ((:request __request) "")
    ((:station __station) (instance tuw_multi_robot_msgs::Station :init))
    )
   (send-super :init)
   (setq _request (string __request))
   (setq _station __station)
   self)
  (:request
   (&optional __request)
   (if __request (setq _request __request)) _request)
  (:station
   (&rest __station)
   (if (keywordp (car __station))
       (send* _station __station)
     (progn
       (if __station (setq _station (car __station)))
       _station)))
  (:serialization-length
   ()
   (+
    ;; string _request
    4 (length _request)
    ;; tuw_multi_robot_msgs/Station _station
    (send _station :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _request
       (write-long (length _request) s) (princ _request s)
     ;; tuw_multi_robot_msgs/Station _station
       (send _station :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; tuw_multi_robot_msgs/Station _station
     (send _station :deserialize buf ptr-) (incf ptr- (send _station :serialization-length))
   ;;
   self)
  )

(intern "*EXECUTED*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLRESPONSE"))
(shadow '*EXECUTED* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLRESPONSE"))
(defconstant tuw_multi_robot_msgs::StationManagerStationProtocolResponse::*EXECUTED* "executed                      # response if the request could be executed successful")
(intern "*FAILED*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLRESPONSE"))
(shadow '*FAILED* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLRESPONSE"))
(defconstant tuw_multi_robot_msgs::StationManagerStationProtocolResponse::*FAILED* "failed                          # response if the request could not be executed successful")
(intern "*ERROR*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLRESPONSE"))
(shadow '*ERROR* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERSTATIONPROTOCOLRESPONSE"))
(defconstant tuw_multi_robot_msgs::StationManagerStationProtocolResponse::*ERROR* "error                            # response if the request is unknown")

(defun tuw_multi_robot_msgs::StationManagerStationProtocolResponse-to-symbol (const)
  (cond
        (t nil)))

(defclass tuw_multi_robot_msgs::StationManagerStationProtocolResponse
  :super ros::object
  :slots (_response ))

(defmethod tuw_multi_robot_msgs::StationManagerStationProtocolResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tuw_multi_robot_msgs::StationManagerStationProtocol
  :super ros::object
  :slots ())

(setf (get tuw_multi_robot_msgs::StationManagerStationProtocol :md5sum-) "1f5e895558b51eb5ebcc012fba03f68a")
(setf (get tuw_multi_robot_msgs::StationManagerStationProtocol :datatype-) "tuw_multi_robot_msgs/StationManagerStationProtocol")
(setf (get tuw_multi_robot_msgs::StationManagerStationProtocol :request) tuw_multi_robot_msgs::StationManagerStationProtocolRequest)
(setf (get tuw_multi_robot_msgs::StationManagerStationProtocol :response) tuw_multi_robot_msgs::StationManagerStationProtocolResponse)

(defmethod tuw_multi_robot_msgs::StationManagerStationProtocolRequest
  (:response () (instance tuw_multi_robot_msgs::StationManagerStationProtocolResponse :init)))

(setf (get tuw_multi_robot_msgs::StationManagerStationProtocolRequest :md5sum-) "1f5e895558b51eb5ebcc012fba03f68a")
(setf (get tuw_multi_robot_msgs::StationManagerStationProtocolRequest :datatype-) "tuw_multi_robot_msgs/StationManagerStationProtocolRequest")
(setf (get tuw_multi_robot_msgs::StationManagerStationProtocolRequest :definition-)
      "#################################################################
## Protocol to Send and Receive Control Commands
#################################################################

string                          request         # request string
tuw_multi_robot_msgs/Station    station         # station message

# request constants
string APPEND = append                          # request to append sent station
string REMOVE = remove                          # request to remove sent station


================================================================================
MSG: tuw_multi_robot_msgs/Station
#################################################################
## Station for Robots to Drive to
#################################################################

Header                 header       # header
int32                  id           # station ID
string                 name         # station name
geometry_msgs/Pose     pose         # station position
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
---

string                          response        # response string

# response constants
string EXECUTED = executed                      # response if the request could be executed successful
string FAILED = failed                          # response if the request could not be executed successful
string ERROR = error                            # response if the request is unknown
")

(setf (get tuw_multi_robot_msgs::StationManagerStationProtocolResponse :md5sum-) "1f5e895558b51eb5ebcc012fba03f68a")
(setf (get tuw_multi_robot_msgs::StationManagerStationProtocolResponse :datatype-) "tuw_multi_robot_msgs/StationManagerStationProtocolResponse")
(setf (get tuw_multi_robot_msgs::StationManagerStationProtocolResponse :definition-)
      "#################################################################
## Protocol to Send and Receive Control Commands
#################################################################

string                          request         # request string
tuw_multi_robot_msgs/Station    station         # station message

# request constants
string APPEND = append                          # request to append sent station
string REMOVE = remove                          # request to remove sent station


================================================================================
MSG: tuw_multi_robot_msgs/Station
#################################################################
## Station for Robots to Drive to
#################################################################

Header                 header       # header
int32                  id           # station ID
string                 name         # station name
geometry_msgs/Pose     pose         # station position
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
---

string                          response        # response string

# response constants
string EXECUTED = executed                      # response if the request could be executed successful
string FAILED = failed                          # response if the request could not be executed successful
string ERROR = error                            # response if the request is unknown
")



(provide :tuw_multi_robot_msgs/StationManagerStationProtocol "1f5e895558b51eb5ebcc012fba03f68a")


