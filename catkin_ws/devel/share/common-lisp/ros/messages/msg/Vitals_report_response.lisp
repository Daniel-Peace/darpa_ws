; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude Vitals_report_response.msg.html

(cl:defclass <Vitals_report_response> (roslisp-msg-protocol:ros-message)
  ((run
    :reader run
    :initarg :run
    :type cl:string
    :initform "")
   (team
    :reader team
    :initarg :team
    :type cl:string
    :initform "")
   (user
    :reader user
    :initarg :user
    :type cl:string
    :initform "")
   (system
    :reader system
    :initarg :system
    :type cl:string
    :initform "")
   (clock
    :reader clock
    :initarg :clock
    :type cl:float
    :initform 0.0)
   (report_id
    :reader report_id
    :initarg :report_id
    :type cl:string
    :initform "")
   (report_timestamp
    :reader report_timestamp
    :initarg :report_timestamp
    :type cl:string
    :initform "")
   (reports_remaining
    :reader reports_remaining
    :initarg :reports_remaining
    :type cl:integer
    :initform 0)
   (report_status
    :reader report_status
    :initarg :report_status
    :type cl:string
    :initform "")
   (casualty_id
    :reader casualty_id
    :initarg :casualty_id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (time_ago
    :reader time_ago
    :initarg :time_ago
    :type cl:integer
    :initform 0))
)

(cl:defclass Vitals_report_response (<Vitals_report_response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vitals_report_response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vitals_report_response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<Vitals_report_response> is deprecated: use messages-msg:Vitals_report_response instead.")))

(cl:ensure-generic-function 'run-val :lambda-list '(m))
(cl:defmethod run-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:run-val is deprecated.  Use messages-msg:run instead.")
  (run m))

(cl:ensure-generic-function 'team-val :lambda-list '(m))
(cl:defmethod team-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:team-val is deprecated.  Use messages-msg:team instead.")
  (team m))

(cl:ensure-generic-function 'user-val :lambda-list '(m))
(cl:defmethod user-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:user-val is deprecated.  Use messages-msg:user instead.")
  (user m))

(cl:ensure-generic-function 'system-val :lambda-list '(m))
(cl:defmethod system-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:system-val is deprecated.  Use messages-msg:system instead.")
  (system m))

(cl:ensure-generic-function 'clock-val :lambda-list '(m))
(cl:defmethod clock-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:clock-val is deprecated.  Use messages-msg:clock instead.")
  (clock m))

(cl:ensure-generic-function 'report_id-val :lambda-list '(m))
(cl:defmethod report_id-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:report_id-val is deprecated.  Use messages-msg:report_id instead.")
  (report_id m))

(cl:ensure-generic-function 'report_timestamp-val :lambda-list '(m))
(cl:defmethod report_timestamp-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:report_timestamp-val is deprecated.  Use messages-msg:report_timestamp instead.")
  (report_timestamp m))

(cl:ensure-generic-function 'reports_remaining-val :lambda-list '(m))
(cl:defmethod reports_remaining-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:reports_remaining-val is deprecated.  Use messages-msg:reports_remaining instead.")
  (reports_remaining m))

(cl:ensure-generic-function 'report_status-val :lambda-list '(m))
(cl:defmethod report_status-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:report_status-val is deprecated.  Use messages-msg:report_status instead.")
  (report_status m))

(cl:ensure-generic-function 'casualty_id-val :lambda-list '(m))
(cl:defmethod casualty_id-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:casualty_id-val is deprecated.  Use messages-msg:casualty_id instead.")
  (casualty_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:type-val is deprecated.  Use messages-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:value-val is deprecated.  Use messages-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'time_ago-val :lambda-list '(m))
(cl:defmethod time_ago-val ((m <Vitals_report_response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:time_ago-val is deprecated.  Use messages-msg:time_ago instead.")
  (time_ago m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vitals_report_response>) ostream)
  "Serializes a message object of type '<Vitals_report_response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'run))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'run))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'team))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'team))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'system))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'system))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'clock))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'report_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'report_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'report_timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'report_timestamp))
  (cl:let* ((signed (cl:slot-value msg 'reports_remaining)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'report_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'report_status))
  (cl:let* ((signed (cl:slot-value msg 'casualty_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'time_ago)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vitals_report_response>) istream)
  "Deserializes a message object of type '<Vitals_report_response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'run) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'run) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'team) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'team) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'system) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'system) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clock) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'report_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'report_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'report_timestamp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'report_timestamp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reports_remaining) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'report_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'report_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'casualty_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_ago) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vitals_report_response>)))
  "Returns string type for a message object of type '<Vitals_report_response>"
  "messages/Vitals_report_response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vitals_report_response)))
  "Returns string type for a message object of type 'Vitals_report_response"
  "messages/Vitals_report_response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vitals_report_response>)))
  "Returns md5sum for a message object of type '<Vitals_report_response>"
  "36982e9875749000fa799fe02bb5f3fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vitals_report_response)))
  "Returns md5sum for a message object of type 'Vitals_report_response"
  "36982e9875749000fa799fe02bb5f3fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vitals_report_response>)))
  "Returns full string definition for message of type '<Vitals_report_response>"
  (cl:format cl:nil "string  run~%string  team~%string  user~%string  system~%float64 clock~%string  report_id~%string  report_timestamp~%int32   reports_remaining~%string  report_status~%int32   casualty_id~%string  type~%int32   value~%int32   time_ago~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vitals_report_response)))
  "Returns full string definition for message of type 'Vitals_report_response"
  (cl:format cl:nil "string  run~%string  team~%string  user~%string  system~%float64 clock~%string  report_id~%string  report_timestamp~%int32   reports_remaining~%string  report_status~%int32   casualty_id~%string  type~%int32   value~%int32   time_ago~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vitals_report_response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'run))
     4 (cl:length (cl:slot-value msg 'team))
     4 (cl:length (cl:slot-value msg 'user))
     4 (cl:length (cl:slot-value msg 'system))
     8
     4 (cl:length (cl:slot-value msg 'report_id))
     4 (cl:length (cl:slot-value msg 'report_timestamp))
     4
     4 (cl:length (cl:slot-value msg 'report_status))
     4
     4 (cl:length (cl:slot-value msg 'type))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vitals_report_response>))
  "Converts a ROS message object to a list"
  (cl:list 'Vitals_report_response
    (cl:cons ':run (run msg))
    (cl:cons ':team (team msg))
    (cl:cons ':user (user msg))
    (cl:cons ':system (system msg))
    (cl:cons ':clock (clock msg))
    (cl:cons ':report_id (report_id msg))
    (cl:cons ':report_timestamp (report_timestamp msg))
    (cl:cons ':reports_remaining (reports_remaining msg))
    (cl:cons ':report_status (report_status msg))
    (cl:cons ':casualty_id (casualty_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':value (value msg))
    (cl:cons ':time_ago (time_ago msg))
))
