;; Auto-generated. Do not edit!


(when (boundp 'messages::Injury)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'Injury (find-package "MESSAGES")))
(unless (find-package "MESSAGES::INJURY")
  (make-package "MESSAGES::INJURY"))

(in-package "ROS")
;;//! \htmlinclude Injury.msg.html


(defclass messages::Injury
  :super ros::object
  :slots (_trauma_head _trauma_torso _trauma_lower_ext _trauma_upper_ext _trauma_ocular _alertness_ocular _alertness_verbal _alertness_motor ))

(defmethod messages::Injury
  (:init
   (&key
    ((:trauma_head __trauma_head) 0)
    ((:trauma_torso __trauma_torso) 0)
    ((:trauma_lower_ext __trauma_lower_ext) 0)
    ((:trauma_upper_ext __trauma_upper_ext) 0)
    ((:trauma_ocular __trauma_ocular) 0)
    ((:alertness_ocular __alertness_ocular) 0)
    ((:alertness_verbal __alertness_verbal) 0)
    ((:alertness_motor __alertness_motor) 0)
    )
   (send-super :init)
   (setq _trauma_head (round __trauma_head))
   (setq _trauma_torso (round __trauma_torso))
   (setq _trauma_lower_ext (round __trauma_lower_ext))
   (setq _trauma_upper_ext (round __trauma_upper_ext))
   (setq _trauma_ocular (round __trauma_ocular))
   (setq _alertness_ocular (round __alertness_ocular))
   (setq _alertness_verbal (round __alertness_verbal))
   (setq _alertness_motor (round __alertness_motor))
   self)
  (:trauma_head
   (&optional __trauma_head)
   (if __trauma_head (setq _trauma_head __trauma_head)) _trauma_head)
  (:trauma_torso
   (&optional __trauma_torso)
   (if __trauma_torso (setq _trauma_torso __trauma_torso)) _trauma_torso)
  (:trauma_lower_ext
   (&optional __trauma_lower_ext)
   (if __trauma_lower_ext (setq _trauma_lower_ext __trauma_lower_ext)) _trauma_lower_ext)
  (:trauma_upper_ext
   (&optional __trauma_upper_ext)
   (if __trauma_upper_ext (setq _trauma_upper_ext __trauma_upper_ext)) _trauma_upper_ext)
  (:trauma_ocular
   (&optional __trauma_ocular)
   (if __trauma_ocular (setq _trauma_ocular __trauma_ocular)) _trauma_ocular)
  (:alertness_ocular
   (&optional __alertness_ocular)
   (if __alertness_ocular (setq _alertness_ocular __alertness_ocular)) _alertness_ocular)
  (:alertness_verbal
   (&optional __alertness_verbal)
   (if __alertness_verbal (setq _alertness_verbal __alertness_verbal)) _alertness_verbal)
  (:alertness_motor
   (&optional __alertness_motor)
   (if __alertness_motor (setq _alertness_motor __alertness_motor)) _alertness_motor)
  (:serialization-length
   ()
   (+
    ;; int32 _trauma_head
    4
    ;; int32 _trauma_torso
    4
    ;; int32 _trauma_lower_ext
    4
    ;; int32 _trauma_upper_ext
    4
    ;; int32 _trauma_ocular
    4
    ;; int32 _alertness_ocular
    4
    ;; int32 _alertness_verbal
    4
    ;; int32 _alertness_motor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _trauma_head
       (write-long _trauma_head s)
     ;; int32 _trauma_torso
       (write-long _trauma_torso s)
     ;; int32 _trauma_lower_ext
       (write-long _trauma_lower_ext s)
     ;; int32 _trauma_upper_ext
       (write-long _trauma_upper_ext s)
     ;; int32 _trauma_ocular
       (write-long _trauma_ocular s)
     ;; int32 _alertness_ocular
       (write-long _alertness_ocular s)
     ;; int32 _alertness_verbal
       (write-long _alertness_verbal s)
     ;; int32 _alertness_motor
       (write-long _alertness_motor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _trauma_head
     (setq _trauma_head (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _trauma_torso
     (setq _trauma_torso (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _trauma_lower_ext
     (setq _trauma_lower_ext (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _trauma_upper_ext
     (setq _trauma_upper_ext (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _trauma_ocular
     (setq _trauma_ocular (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alertness_ocular
     (setq _alertness_ocular (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alertness_verbal
     (setq _alertness_verbal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alertness_motor
     (setq _alertness_motor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get messages::Injury :md5sum-) "ea36f64e92a1aa168772ef9085fb9507")
(setf (get messages::Injury :datatype-) "messages/Injury")
(setf (get messages::Injury :definition-)
      "int32   trauma_head
int32   trauma_torso
int32   trauma_lower_ext
int32   trauma_upper_ext
int32   trauma_ocular
int32   alertness_ocular
int32   alertness_verbal
int32   alertness_motor
")



(provide :messages/Injury "ea36f64e92a1aa168772ef9085fb9507")


