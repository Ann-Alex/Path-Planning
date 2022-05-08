;; Auto-generated. Do not edit!


(when (boundp 'tuw_geometry_msgs::LineSegment)
  (if (not (find-package "TUW_GEOMETRY_MSGS"))
    (make-package "TUW_GEOMETRY_MSGS"))
  (shadow 'LineSegment (find-package "TUW_GEOMETRY_MSGS")))
(unless (find-package "TUW_GEOMETRY_MSGS::LINESEGMENT")
  (make-package "TUW_GEOMETRY_MSGS::LINESEGMENT"))

(in-package "ROS")
;;//! \htmlinclude LineSegment.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tuw_geometry_msgs::LineSegment
  :super ros::object
  :slots (_id _p0 _p1 ))

(defmethod tuw_geometry_msgs::LineSegment
  (:init
   (&key
    ((:id __id) 0)
    ((:p0 __p0) (instance geometry_msgs::Point :init))
    ((:p1 __p1) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _p0 __p0)
   (setq _p1 __p1)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:p0
   (&rest __p0)
   (if (keywordp (car __p0))
       (send* _p0 __p0)
     (progn
       (if __p0 (setq _p0 (car __p0)))
       _p0)))
  (:p1
   (&rest __p1)
   (if (keywordp (car __p1))
       (send* _p1 __p1)
     (progn
       (if __p1 (setq _p1 (car __p1)))
       _p1)))
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; geometry_msgs/Point _p0
    (send _p0 :serialization-length)
    ;; geometry_msgs/Point _p1
    (send _p1 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; geometry_msgs/Point _p0
       (send _p0 :serialize s)
     ;; geometry_msgs/Point _p1
       (send _p1 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _p0
     (send _p0 :deserialize buf ptr-) (incf ptr- (send _p0 :serialization-length))
   ;; geometry_msgs/Point _p1
     (send _p1 :deserialize buf ptr-) (incf ptr- (send _p1 :serialization-length))
   ;;
   self)
  )

(setf (get tuw_geometry_msgs::LineSegment :md5sum-) "f8813871a1413bea6f3b9d3b1470ee5f")
(setf (get tuw_geometry_msgs::LineSegment :datatype-) "tuw_geometry_msgs/LineSegment")
(setf (get tuw_geometry_msgs::LineSegment :definition-)
      "uint32 id                     # Segment id

geometry_msgs/Point p0        # linesegment endpoint 0
geometry_msgs/Point p1        # linesegment endpoint 1
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :tuw_geometry_msgs/LineSegment "f8813871a1413bea6f3b9d3b1470ee5f")


