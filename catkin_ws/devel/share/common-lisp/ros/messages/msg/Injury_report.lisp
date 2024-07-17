; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude Injury_report.msg.html

(cl:defclass <Injury_report> (roslisp-msg-protocol:ros-message)
  ((casualty_id
    :reader casualty_id
    :initarg :casualty_id
    :type cl:integer
    :initform 0)
   (team
    :reader team
    :initarg :team
    :type cl:string
    :initform "")
   (system
    :reader system
    :initarg :system
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass Injury_report (<Injury_report>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Injury_report>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Injury_report)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<Injury_report> is deprecated: use messages-msg:Injury_report instead.")))

(cl:ensure-generic-function 'casualty_id-val :lambda-list '(m))
(cl:defmethod casualty_id-val ((m <Injury_report>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:casualty_id-val is deprecated.  Use messages-msg:casualty_id instead.")
  (casualty_id m))

(cl:ensure-generic-function 'team-val :lambda-list '(m))
(cl:defmethod team-val ((m <Injury_report>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:team-val is deprecated.  Use messages-msg:team instead.")
  (team m))

(cl:ensure-generic-function 'system-val :lambda-list '(m))
(cl:defmethod system-val ((m <Injury_report>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:system-val is deprecated.  Use messages-msg:system instead.")
  (system m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Injury_report>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:type-val is deprecated.  Use messages-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Injury_report>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:value-val is deprecated.  Use messages-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Injury_report>) ostream)
  "Serializes a message object of type '<Injury_report>"
  (cl:let* ((signed (cl:slot-value msg 'casualty_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'team))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'team))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'system))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'system))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Injury_report>) istream)
  "Deserializes a message object of type '<Injury_report>"
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
      (cl:setf (cl:slot-value msg 'team) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'team) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'system) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'system) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Injury_report>)))
  "Returns string type for a message object of type '<Injury_report>"
  "messages/Injury_report")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Injury_report)))
  "Returns string type for a message object of type 'Injury_report"
  "messages/Injury_report")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Injury_report>)))
  "Returns md5sum for a message object of type '<Injury_report>"
  "3ec9446ca1a98dc79ca9f3632cd565bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Injury_report)))
  "Returns md5sum for a message object of type 'Injury_report"
  "3ec9446ca1a98dc79ca9f3632cd565bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Injury_report>)))
  "Returns full string definition for message of type '<Injury_report>"
  (cl:format cl:nil "int32   casualty_id~%string  team~%string  system~%string  type~%int32   value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Injury_report)))
  "Returns full string definition for message of type 'Injury_report"
  (cl:format cl:nil "int32   casualty_id~%string  team~%string  system~%string  type~%int32   value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Injury_report>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'team))
     4 (cl:length (cl:slot-value msg 'system))
     4 (cl:length (cl:slot-value msg 'type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Injury_report>))
  "Converts a ROS message object to a list"
  (cl:list 'Injury_report
    (cl:cons ':casualty_id (casualty_id msg))
    (cl:cons ':team (team msg))
    (cl:cons ':system (system msg))
    (cl:cons ':type (type msg))
    (cl:cons ':value (value msg))
))
