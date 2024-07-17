;; Auto-generated. Do not edit!


(when (boundp 'messages::Critical_report)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'Critical_report (find-package "MESSAGES")))
(unless (find-package "MESSAGES::CRITICAL_REPORT")
  (make-package "MESSAGES::CRITICAL_REPORT"))

(in-package "ROS")
;;//! \htmlinclude Critical_report.msg.html


(defclass messages::Critical_report
  :super ros::object
  :slots (_casualty_id _team _system _type _value ))

(defmethod messages::Critical_report
  (:init
   (&key
    ((:casualty_id __casualty_id) 0)
    ((:team __team) "")
    ((:system __system) "")
    ((:type __type) "")
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _casualty_id (round __casualty_id))
   (setq _team (string __team))
   (setq _system (string __system))
   (setq _type (string __type))
   (setq _value (round __value))
   self)
  (:casualty_id
   (&optional __casualty_id)
   (if __casualty_id (setq _casualty_id __casualty_id)) _casualty_id)
  (:team
   (&optional __team)
   (if __team (setq _team __team)) _team)
  (:system
   (&optional __system)
   (if __system (setq _system __system)) _system)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _casualty_id
    4
    ;; string _team
    4 (length _team)
    ;; string _system
    4 (length _system)
    ;; string _type
    4 (length _type)
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _casualty_id
       (write-long _casualty_id s)
     ;; string _team
       (write-long (length _team) s) (princ _team s)
     ;; string _system
       (write-long (length _system) s) (princ _system s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _casualty_id
     (setq _casualty_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _team
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _team (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _system
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _system (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get messages::Critical_report :md5sum-) "3ec9446ca1a98dc79ca9f3632cd565bd")
(setf (get messages::Critical_report :datatype-) "messages/Critical_report")
(setf (get messages::Critical_report :definition-)
      "int32   casualty_id
string  team
string  system
string  type
int32   value
")



(provide :messages/Critical_report "3ec9446ca1a98dc79ca9f3632cd565bd")


