;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::StationManagerControlProtocol)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'StationManagerControlProtocol (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOL")
  (make-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOL"))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST")
  (make-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST"))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLRESPONSE")
  (make-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLRESPONSE"))

(in-package "ROS")





(intern "*LOAD*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST"))
(shadow '*LOAD* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST"))
(defconstant tuw_multi_robot_msgs::StationManagerControlProtocolRequest::*LOAD* "load          # command to load a file (addition is the file path)")
(intern "*SAVE*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST"))
(shadow '*SAVE* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST"))
(defconstant tuw_multi_robot_msgs::StationManagerControlProtocolRequest::*SAVE* "save          # command to save a file (addition is the file path)")
(intern "*UPDATE*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST"))
(shadow '*UPDATE* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST"))
(defconstant tuw_multi_robot_msgs::StationManagerControlProtocolRequest::*UPDATE* "update      # command to define update policy")
(intern "*ONCE*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST"))
(shadow '*ONCE* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST"))
(defconstant tuw_multi_robot_msgs::StationManagerControlProtocolRequest::*ONCE* "once          # addition to publish data once on request")
(intern "*CHANGE*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST"))
(shadow '*CHANGE* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLREQUEST"))
(defconstant tuw_multi_robot_msgs::StationManagerControlProtocolRequest::*CHANGE* "change      # addition to publish data on ever change")

(defun tuw_multi_robot_msgs::StationManagerControlProtocolRequest-to-symbol (const)
  (cond
        (t nil)))

(defclass tuw_multi_robot_msgs::StationManagerControlProtocolRequest
  :super ros::object
  :slots (_request _addition ))

(defmethod tuw_multi_robot_msgs::StationManagerControlProtocolRequest
  (:init
   (&key
    ((:request __request) "")
    ((:addition __addition) "")
    )
   (send-super :init)
   (setq _request (string __request))
   (setq _addition (string __addition))
   self)
  (:request
   (&optional __request)
   (if __request (setq _request __request)) _request)
  (:addition
   (&optional __addition)
   (if __addition (setq _addition __addition)) _addition)
  (:serialization-length
   ()
   (+
    ;; string _request
    4 (length _request)
    ;; string _addition
    4 (length _addition)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _request
       (write-long (length _request) s) (princ _request s)
     ;; string _addition
       (write-long (length _addition) s) (princ _addition s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _addition
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _addition (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*EXECUTED*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLRESPONSE"))
(shadow '*EXECUTED* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLRESPONSE"))
(defconstant tuw_multi_robot_msgs::StationManagerControlProtocolResponse::*EXECUTED* "executed  # response if the request could be executed successful")
(intern "*FAILED*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLRESPONSE"))
(shadow '*FAILED* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLRESPONSE"))
(defconstant tuw_multi_robot_msgs::StationManagerControlProtocolResponse::*FAILED* "failed      # response if the request could not be executed successful")
(intern "*ERROR*" (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLRESPONSE"))
(shadow '*ERROR* (find-package "TUW_MULTI_ROBOT_MSGS::STATIONMANAGERCONTROLPROTOCOLRESPONSE"))
(defconstant tuw_multi_robot_msgs::StationManagerControlProtocolResponse::*ERROR* "error        # response if the request is unknown")

(defun tuw_multi_robot_msgs::StationManagerControlProtocolResponse-to-symbol (const)
  (cond
        (t nil)))

(defclass tuw_multi_robot_msgs::StationManagerControlProtocolResponse
  :super ros::object
  :slots (_response ))

(defmethod tuw_multi_robot_msgs::StationManagerControlProtocolResponse
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

(defclass tuw_multi_robot_msgs::StationManagerControlProtocol
  :super ros::object
  :slots ())

(setf (get tuw_multi_robot_msgs::StationManagerControlProtocol :md5sum-) "4c3ba04d64c7726241cb44a482e7d069")
(setf (get tuw_multi_robot_msgs::StationManagerControlProtocol :datatype-) "tuw_multi_robot_msgs/StationManagerControlProtocol")
(setf (get tuw_multi_robot_msgs::StationManagerControlProtocol :request) tuw_multi_robot_msgs::StationManagerControlProtocolRequest)
(setf (get tuw_multi_robot_msgs::StationManagerControlProtocol :response) tuw_multi_robot_msgs::StationManagerControlProtocolResponse)

(defmethod tuw_multi_robot_msgs::StationManagerControlProtocolRequest
  (:response () (instance tuw_multi_robot_msgs::StationManagerControlProtocolResponse :init)))

(setf (get tuw_multi_robot_msgs::StationManagerControlProtocolRequest :md5sum-) "4c3ba04d64c7726241cb44a482e7d069")
(setf (get tuw_multi_robot_msgs::StationManagerControlProtocolRequest :datatype-) "tuw_multi_robot_msgs/StationManagerControlProtocolRequest")
(setf (get tuw_multi_robot_msgs::StationManagerControlProtocolRequest :definition-)
      "#################################################################
## Protocol to Send and Receive Station Management Commands
#################################################################

string      request         # request
string      addition        # addition, holds information to the request

# request constants
string LOAD = load          # command to load a file (addition is the file path)
string SAVE = save          # command to save a file (addition is the file path)
string UPDATE = update      # command to define update policy

string ONCE = once          # addition to publish data once on request
string CHANGE = change      # addition to publish data on ever change

---

string      response        # response string

# response constants
string EXECUTED = executed  # response if the request could be executed successful
string FAILED = failed      # response if the request could not be executed successful
string ERROR = error        # response if the request is unknown
")

(setf (get tuw_multi_robot_msgs::StationManagerControlProtocolResponse :md5sum-) "4c3ba04d64c7726241cb44a482e7d069")
(setf (get tuw_multi_robot_msgs::StationManagerControlProtocolResponse :datatype-) "tuw_multi_robot_msgs/StationManagerControlProtocolResponse")
(setf (get tuw_multi_robot_msgs::StationManagerControlProtocolResponse :definition-)
      "#################################################################
## Protocol to Send and Receive Station Management Commands
#################################################################

string      request         # request
string      addition        # addition, holds information to the request

# request constants
string LOAD = load          # command to load a file (addition is the file path)
string SAVE = save          # command to save a file (addition is the file path)
string UPDATE = update      # command to define update policy

string ONCE = once          # addition to publish data once on request
string CHANGE = change      # addition to publish data on ever change

---

string      response        # response string

# response constants
string EXECUTED = executed  # response if the request could be executed successful
string FAILED = failed      # response if the request could not be executed successful
string ERROR = error        # response if the request is unknown
")



(provide :tuw_multi_robot_msgs/StationManagerControlProtocol "4c3ba04d64c7726241cb44a482e7d069")


