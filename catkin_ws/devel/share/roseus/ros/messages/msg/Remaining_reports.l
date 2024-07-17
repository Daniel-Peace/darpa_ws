;; Auto-generated. Do not edit!


(when (boundp 'messages::Remaining_reports)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'Remaining_reports (find-package "MESSAGES")))
(unless (find-package "MESSAGES::REMAINING_REPORTS")
  (make-package "MESSAGES::REMAINING_REPORTS"))

(in-package "ROS")
;;//! \htmlinclude Remaining_reports.msg.html


(defclass messages::Remaining_reports
  :super ros::object
  :slots (_critical _vitals _injury ))

(defmethod messages::Remaining_reports
  (:init
   (&key
    ((:critical __critical) (instance messages::Critical :init))
    ((:vitals __vitals) (instance messages::Vitals :init))
    ((:injury __injury) (instance messages::Injury :init))
    )
   (send-super :init)
   (setq _critical __critical)
   (setq _vitals __vitals)
   (setq _injury __injury)
   self)
  (:critical
   (&rest __critical)
   (if (keywordp (car __critical))
       (send* _critical __critical)
     (progn
       (if __critical (setq _critical (car __critical)))
       _critical)))
  (:vitals
   (&rest __vitals)
   (if (keywordp (car __vitals))
       (send* _vitals __vitals)
     (progn
       (if __vitals (setq _vitals (car __vitals)))
       _vitals)))
  (:injury
   (&rest __injury)
   (if (keywordp (car __injury))
       (send* _injury __injury)
     (progn
       (if __injury (setq _injury (car __injury)))
       _injury)))
  (:serialization-length
   ()
   (+
    ;; messages/Critical _critical
    (send _critical :serialization-length)
    ;; messages/Vitals _vitals
    (send _vitals :serialization-length)
    ;; messages/Injury _injury
    (send _injury :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; messages/Critical _critical
       (send _critical :serialize s)
     ;; messages/Vitals _vitals
       (send _vitals :serialize s)
     ;; messages/Injury _injury
       (send _injury :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; messages/Critical _critical
     (send _critical :deserialize buf ptr-) (incf ptr- (send _critical :serialization-length))
   ;; messages/Vitals _vitals
     (send _vitals :deserialize buf ptr-) (incf ptr- (send _vitals :serialization-length))
   ;; messages/Injury _injury
     (send _injury :deserialize buf ptr-) (incf ptr- (send _injury :serialization-length))
   ;;
   self)
  )

(setf (get messages::Remaining_reports :md5sum-) "d18ac92b88307708af88871aae17ed91")
(setf (get messages::Remaining_reports :datatype-) "messages/Remaining_reports")
(setf (get messages::Remaining_reports :definition-)
      "Critical    critical
Vitals      vitals 
Injury      injury
================================================================================
MSG: messages/Critical
int32   hemorrhage
int32   distress
================================================================================
MSG: messages/Vitals
int32 heart
int32 respiratory
================================================================================
MSG: messages/Injury
int32   trauma_head
int32   trauma_torso
int32   trauma_lower_ext
int32   trauma_upper_ext
int32   trauma_ocular
int32   alertness_ocular
int32   alertness_verbal
int32   alertness_motor
")



(provide :messages/Remaining_reports "d18ac92b88307708af88871aae17ed91")


