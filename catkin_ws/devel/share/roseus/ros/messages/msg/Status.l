;; Auto-generated. Do not edit!


(when (boundp 'messages::Status)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'Status (find-package "MESSAGES")))
(unless (find-package "MESSAGES::STATUS")
  (make-package "MESSAGES::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html


(defclass messages::Status
  :super ros::object
  :slots (_clock _team _user _remaining_reports ))

(defmethod messages::Status
  (:init
   (&key
    ((:clock __clock) 0.0)
    ((:team __team) "")
    ((:user __user) "")
    ((:remaining_reports __remaining_reports) (instance messages::Remaining_reports :init))
    )
   (send-super :init)
   (setq _clock (float __clock))
   (setq _team (string __team))
   (setq _user (string __user))
   (setq _remaining_reports __remaining_reports)
   self)
  (:clock
   (&optional __clock)
   (if __clock (setq _clock __clock)) _clock)
  (:team
   (&optional __team)
   (if __team (setq _team __team)) _team)
  (:user
   (&optional __user)
   (if __user (setq _user __user)) _user)
  (:remaining_reports
   (&rest __remaining_reports)
   (if (keywordp (car __remaining_reports))
       (send* _remaining_reports __remaining_reports)
     (progn
       (if __remaining_reports (setq _remaining_reports (car __remaining_reports)))
       _remaining_reports)))
  (:serialization-length
   ()
   (+
    ;; float64 _clock
    8
    ;; string _team
    4 (length _team)
    ;; string _user
    4 (length _user)
    ;; messages/Remaining_reports _remaining_reports
    (send _remaining_reports :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _clock
       (sys::poke _clock (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _team
       (write-long (length _team) s) (princ _team s)
     ;; string _user
       (write-long (length _user) s) (princ _user s)
     ;; messages/Remaining_reports _remaining_reports
       (send _remaining_reports :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _clock
     (setq _clock (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _team
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _team (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _user
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; messages/Remaining_reports _remaining_reports
     (send _remaining_reports :deserialize buf ptr-) (incf ptr- (send _remaining_reports :serialization-length))
   ;;
   self)
  )

(setf (get messages::Status :md5sum-) "3971e6279401a5d4495111784f1454fc")
(setf (get messages::Status :datatype-) "messages/Status")
(setf (get messages::Status :definition-)
      "float64             clock
string              team
string              user
Remaining_reports   remaining_reports
================================================================================
MSG: messages/Remaining_reports
Critical    critical
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



(provide :messages/Status "3971e6279401a5d4495111784f1454fc")


