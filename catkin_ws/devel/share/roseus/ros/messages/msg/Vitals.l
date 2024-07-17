;; Auto-generated. Do not edit!


(when (boundp 'messages::Vitals)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'Vitals (find-package "MESSAGES")))
(unless (find-package "MESSAGES::VITALS")
  (make-package "MESSAGES::VITALS"))

(in-package "ROS")
;;//! \htmlinclude Vitals.msg.html


(defclass messages::Vitals
  :super ros::object
  :slots (_heart _respiratory ))

(defmethod messages::Vitals
  (:init
   (&key
    ((:heart __heart) 0)
    ((:respiratory __respiratory) 0)
    )
   (send-super :init)
   (setq _heart (round __heart))
   (setq _respiratory (round __respiratory))
   self)
  (:heart
   (&optional __heart)
   (if __heart (setq _heart __heart)) _heart)
  (:respiratory
   (&optional __respiratory)
   (if __respiratory (setq _respiratory __respiratory)) _respiratory)
  (:serialization-length
   ()
   (+
    ;; int32 _heart
    4
    ;; int32 _respiratory
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _heart
       (write-long _heart s)
     ;; int32 _respiratory
       (write-long _respiratory s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _heart
     (setq _heart (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _respiratory
     (setq _respiratory (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get messages::Vitals :md5sum-) "0d419d9c4365749288a9e6c5033a7520")
(setf (get messages::Vitals :datatype-) "messages/Vitals")
(setf (get messages::Vitals :definition-)
      "int32 heart
int32 respiratory
")



(provide :messages/Vitals "0d419d9c4365749288a9e6c5033a7520")


