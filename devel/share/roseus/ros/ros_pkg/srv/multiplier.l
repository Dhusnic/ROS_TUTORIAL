;; Auto-generated. Do not edit!


(when (boundp 'ros_pkg::multiplier)
  (if (not (find-package "ROS_PKG"))
    (make-package "ROS_PKG"))
  (shadow 'multiplier (find-package "ROS_PKG")))
(unless (find-package "ROS_PKG::MULTIPLIER")
  (make-package "ROS_PKG::MULTIPLIER"))
(unless (find-package "ROS_PKG::MULTIPLIERREQUEST")
  (make-package "ROS_PKG::MULTIPLIERREQUEST"))
(unless (find-package "ROS_PKG::MULTIPLIERRESPONSE")
  (make-package "ROS_PKG::MULTIPLIERRESPONSE"))

(in-package "ROS")





(defclass ros_pkg::multiplierRequest
  :super ros::object
  :slots (_a _b ))

(defmethod ros_pkg::multiplierRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_pkg::multiplierResponse
  :super ros::object
  :slots (_result ))

(defmethod ros_pkg::multiplierResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_pkg::multiplier
  :super ros::object
  :slots ())

(setf (get ros_pkg::multiplier :md5sum-) "a7d7d7065d45755acef7d4dcf908162a")
(setf (get ros_pkg::multiplier :datatype-) "ros_pkg/multiplier")
(setf (get ros_pkg::multiplier :request) ros_pkg::multiplierRequest)
(setf (get ros_pkg::multiplier :response) ros_pkg::multiplierResponse)

(defmethod ros_pkg::multiplierRequest
  (:response () (instance ros_pkg::multiplierResponse :init)))

(setf (get ros_pkg::multiplierRequest :md5sum-) "a7d7d7065d45755acef7d4dcf908162a")
(setf (get ros_pkg::multiplierRequest :datatype-) "ros_pkg/multiplierRequest")
(setf (get ros_pkg::multiplierRequest :definition-)
      "int32 a
int32 b
---
int32 result
")

(setf (get ros_pkg::multiplierResponse :md5sum-) "a7d7d7065d45755acef7d4dcf908162a")
(setf (get ros_pkg::multiplierResponse :datatype-) "ros_pkg/multiplierResponse")
(setf (get ros_pkg::multiplierResponse :definition-)
      "int32 a
int32 b
---
int32 result
")



(provide :ros_pkg/multiplier "a7d7d7065d45755acef7d4dcf908162a")


