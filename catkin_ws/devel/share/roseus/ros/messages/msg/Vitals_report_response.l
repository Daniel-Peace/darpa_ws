;; Auto-generated. Do not edit!


(when (boundp 'messages::Vitals_report_response)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'Vitals_report_response (find-package "MESSAGES")))
(unless (find-package "MESSAGES::VITALS_REPORT_RESPONSE")
  (make-package "MESSAGES::VITALS_REPORT_RESPONSE"))

(in-package "ROS")
;;//! \htmlinclude Vitals_report_response.msg.html


(defclass messages::Vitals_report_response
  :super ros::object
  :slots (_run _team _user _system _clock _report_id _report_timestamp _reports_remaining _report_status _casualty_id _type _value _time_ago ))

(defmethod messages::Vitals_report_response
  (:init
   (&key
    ((:run __run) "")
    ((:team __team) "")
    ((:user __user) "")
    ((:system __system) "")
    ((:clock __clock) 0.0)
    ((:report_id __report_id) "")
    ((:report_timestamp __report_timestamp) "")
    ((:reports_remaining __reports_remaining) 0)
    ((:report_status __report_status) "")
    ((:casualty_id __casualty_id) 0)
    ((:type __type) "")
    ((:value __value) 0)
    ((:time_ago __time_ago) 0)
    )
   (send-super :init)
   (setq _run (string __run))
   (setq _team (string __team))
   (setq _user (string __user))
   (setq _system (string __system))
   (setq _clock (float __clock))
   (setq _report_id (string __report_id))
   (setq _report_timestamp (string __report_timestamp))
   (setq _reports_remaining (round __reports_remaining))
   (setq _report_status (string __report_status))
   (setq _casualty_id (round __casualty_id))
   (setq _type (string __type))
   (setq _value (round __value))
   (setq _time_ago (round __time_ago))
   self)
  (:run
   (&optional __run)
   (if __run (setq _run __run)) _run)
  (:team
   (&optional __team)
   (if __team (setq _team __team)) _team)
  (:user
   (&optional __user)
   (if __user (setq _user __user)) _user)
  (:system
   (&optional __system)
   (if __system (setq _system __system)) _system)
  (:clock
   (&optional __clock)
   (if __clock (setq _clock __clock)) _clock)
  (:report_id
   (&optional __report_id)
   (if __report_id (setq _report_id __report_id)) _report_id)
  (:report_timestamp
   (&optional __report_timestamp)
   (if __report_timestamp (setq _report_timestamp __report_timestamp)) _report_timestamp)
  (:reports_remaining
   (&optional __reports_remaining)
   (if __reports_remaining (setq _reports_remaining __reports_remaining)) _reports_remaining)
  (:report_status
   (&optional __report_status)
   (if __report_status (setq _report_status __report_status)) _report_status)
  (:casualty_id
   (&optional __casualty_id)
   (if __casualty_id (setq _casualty_id __casualty_id)) _casualty_id)
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
    ;; string _run
    4 (length _run)
    ;; string _team
    4 (length _team)
    ;; string _user
    4 (length _user)
    ;; string _system
    4 (length _system)
    ;; float64 _clock
    8
    ;; string _report_id
    4 (length _report_id)
    ;; string _report_timestamp
    4 (length _report_timestamp)
    ;; int32 _reports_remaining
    4
    ;; string _report_status
    4 (length _report_status)
    ;; int32 _casualty_id
    4
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
     ;; string _run
       (write-long (length _run) s) (princ _run s)
     ;; string _team
       (write-long (length _team) s) (princ _team s)
     ;; string _user
       (write-long (length _user) s) (princ _user s)
     ;; string _system
       (write-long (length _system) s) (princ _system s)
     ;; float64 _clock
       (sys::poke _clock (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _report_id
       (write-long (length _report_id) s) (princ _report_id s)
     ;; string _report_timestamp
       (write-long (length _report_timestamp) s) (princ _report_timestamp s)
     ;; int32 _reports_remaining
       (write-long _reports_remaining s)
     ;; string _report_status
       (write-long (length _report_status) s) (princ _report_status s)
     ;; int32 _casualty_id
       (write-long _casualty_id s)
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
   ;; string _run
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _run (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _team
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _team (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _user
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _system
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _system (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _clock
     (setq _clock (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _report_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _report_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _report_timestamp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _report_timestamp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _reports_remaining
     (setq _reports_remaining (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _report_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _report_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _casualty_id
     (setq _casualty_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _time_ago
     (setq _time_ago (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get messages::Vitals_report_response :md5sum-) "36982e9875749000fa799fe02bb5f3fa")
(setf (get messages::Vitals_report_response :datatype-) "messages/Vitals_report_response")
(setf (get messages::Vitals_report_response :definition-)
      "string  run
string  team
string  user
string  system
float64 clock
string  report_id
string  report_timestamp
int32   reports_remaining
string  report_status
int32   casualty_id
string  type
int32   value
int32   time_ago
")



(provide :messages/Vitals_report_response "36982e9875749000fa799fe02bb5f3fa")


