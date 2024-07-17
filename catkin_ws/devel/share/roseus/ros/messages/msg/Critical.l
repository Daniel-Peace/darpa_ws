;; Auto-generated. Do not edit!


(when (boundp 'messages::Critical)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'Critical (find-package "MESSAGES")))
(unless (find-package "MESSAGES::CRITICAL")
  (make-package "MESSAGES::CRITICAL"))

(in-package "ROS")
;;//! \htmlinclude Critical.msg.html


(defclass messages::Critical
  :super ros::object
  :slots (_hemorrhage _distress ))

(defmethod messages::Critical
  (:init
   (&key
    ((:hemorrhage __hemorrhage) 0)
    ((:distress __distress) 0)
    )
   (send-super :init)
   (setq _hemorrhage (round __hemorrhage))
   (setq _distress (round __distress))
   self)
  (:hemorrhage
   (&optional __hemorrhage)
   (if __hemorrhage (setq _hemorrhage __hemorrhage)) _hemorrhage)
  (:distress
   (&optional __distress)
   (if __distress (setq _distress __distress)) _distress)
  (:serialization-length
   ()
   (+
    ;; int32 _hemorrhage
    4
    ;; int32 _distress
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _hemorrhage
       (write-long _hemorrhage s)
     ;; int32 _distress
       (write-long _distress s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _hemorrhage
     (setq _hemorrhage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _distress
     (setq _distress (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get messages::Critical :md5sum-) "6b92d3e2e62f03348662932b496ff104")
(setf (get messages::Critical :datatype-) "messages/Critical")
(setf (get messages::Critical :definition-)
      "int32   hemorrhage
int32   distress
")



(provide :messages/Critical "6b92d3e2e62f03348662932b496ff104")


