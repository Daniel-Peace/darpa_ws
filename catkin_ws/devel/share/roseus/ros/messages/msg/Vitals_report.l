;; Auto-generated. Do not edit!


(when (boundp 'messages::Vitals_report)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'Vitals_report (find-package "MESSAGES")))
(unless (find-package "MESSAGES::VITALS_REPORT")
  (make-package "MESSAGES::VITALS_REPORT"))

(in-package "ROS")
;;//! \htmlinclude Vitals_report.msg.html


(defclass messages::Vitals_report
  :super ros::object
  :slots (_casualty_id _team _system _type _value _time_ago ))

(defmethod messages::Vitals_report
  (:init
   (&key
    ((:casualty_id __casualty_id) 0)
    ((:team __team) "")
    ((:system __system) "")
    ((:type __type) "")
    ((:value __value) 0)
    ((:time_ago __time_ago) 0)
    )
   (send-super :init)
   (setq _casualty_id (round __casualty_id))
   (setq _team (string __team))
   (setq _system (string __system))
   (setq _type (string __type))
   (setq _value (round __value))
   (setq _time_ago (round __time_ago))
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
  (:time_ago
   (&optional __time_ago)
   (if __time_ago (setq _time_ago __time_ago)) _time_ago)
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
    ;; int32 _time_ago
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
     ;; int32 _time_ago
       (write-long _time_ago s)
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
   ;; int32 _time_ago
     (setq _time_ago (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get messages::Vitals_report :md5sum-) "7fbc70b8f7fcda9f9d28d5bbc673bba5")
(setf (get messages::Vitals_report :datatype-) "messages/Vitals_report")
(setf (get messages::Vitals_report :definition-)
      "int32   casualty_id
string  team
string  system
string  type
int32   value
int32   time_ago
")



(provide :messages/Vitals_report "7fbc70b8f7fcda9f9d28d5bbc673bba5")


