;; Auto-generated. Do not edit!


(when (boundp 'tuw_nav_msgs::Float64Array)
  (if (not (find-package "TUW_NAV_MSGS"))
    (make-package "TUW_NAV_MSGS"))
  (shadow 'Float64Array (find-package "TUW_NAV_MSGS")))
(unless (find-package "TUW_NAV_MSGS::FLOAT64ARRAY")
  (make-package "TUW_NAV_MSGS::FLOAT64ARRAY"))

(in-package "ROS")
;;//! \htmlinclude Float64Array.msg.html


(defclass tuw_nav_msgs::Float64Array
  :super ros::object
  :slots (_val ))

(defmethod tuw_nav_msgs::Float64Array
  (:init
   (&key
    ((:val __val) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _val __val)
   self)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; float64[] _val
    (* 8    (length _val)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _val
     (write-long (length _val) s)
     (dotimes (i (length _val))
       (sys::poke (elt _val i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _val
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _val (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _val i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get tuw_nav_msgs::Float64Array :md5sum-) "65ac3f59e35977c61c27adccf4c68288")
(setf (get tuw_nav_msgs::Float64Array :datatype-) "tuw_nav_msgs/Float64Array")
(setf (get tuw_nav_msgs::Float64Array :definition-)
      "float64[] val

")



(provide :tuw_nav_msgs/Float64Array "65ac3f59e35977c61c27adccf4c68288")


