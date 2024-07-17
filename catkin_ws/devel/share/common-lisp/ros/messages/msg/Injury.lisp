; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude Injury.msg.html

(cl:defclass <Injury> (roslisp-msg-protocol:ros-message)
  ((trauma_head
    :reader trauma_head
    :initarg :trauma_head
    :type cl:integer
    :initform 0)
   (trauma_torso
    :reader trauma_torso
    :initarg :trauma_torso
    :type cl:integer
    :initform 0)
   (trauma_lower_ext
    :reader trauma_lower_ext
    :initarg :trauma_lower_ext
    :type cl:integer
    :initform 0)
   (trauma_upper_ext
    :reader trauma_upper_ext
    :initarg :trauma_upper_ext
    :type cl:integer
    :initform 0)
   (trauma_ocular
    :reader trauma_ocular
    :initarg :trauma_ocular
    :type cl:integer
    :initform 0)
   (alertness_ocular
    :reader alertness_ocular
    :initarg :alertness_ocular
    :type cl:integer
    :initform 0)
   (alertness_verbal
    :reader alertness_verbal
    :initarg :alertness_verbal
    :type cl:integer
    :initform 0)
   (alertness_motor
    :reader alertness_motor
    :initarg :alertness_motor
    :type cl:integer
    :initform 0))
)

(cl:defclass Injury (<Injury>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Injury>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Injury)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<Injury> is deprecated: use messages-msg:Injury instead.")))

(cl:ensure-generic-function 'trauma_head-val :lambda-list '(m))
(cl:defmethod trauma_head-val ((m <Injury>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:trauma_head-val is deprecated.  Use messages-msg:trauma_head instead.")
  (trauma_head m))

(cl:ensure-generic-function 'trauma_torso-val :lambda-list '(m))
(cl:defmethod trauma_torso-val ((m <Injury>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:trauma_torso-val is deprecated.  Use messages-msg:trauma_torso instead.")
  (trauma_torso m))

(cl:ensure-generic-function 'trauma_lower_ext-val :lambda-list '(m))
(cl:defmethod trauma_lower_ext-val ((m <Injury>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:trauma_lower_ext-val is deprecated.  Use messages-msg:trauma_lower_ext instead.")
  (trauma_lower_ext m))

(cl:ensure-generic-function 'trauma_upper_ext-val :lambda-list '(m))
(cl:defmethod trauma_upper_ext-val ((m <Injury>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:trauma_upper_ext-val is deprecated.  Use messages-msg:trauma_upper_ext instead.")
  (trauma_upper_ext m))

(cl:ensure-generic-function 'trauma_ocular-val :lambda-list '(m))
(cl:defmethod trauma_ocular-val ((m <Injury>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:trauma_ocular-val is deprecated.  Use messages-msg:trauma_ocular instead.")
  (trauma_ocular m))

(cl:ensure-generic-function 'alertness_ocular-val :lambda-list '(m))
(cl:defmethod alertness_ocular-val ((m <Injury>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:alertness_ocular-val is deprecated.  Use messages-msg:alertness_ocular instead.")
  (alertness_ocular m))

(cl:ensure-generic-function 'alertness_verbal-val :lambda-list '(m))
(cl:defmethod alertness_verbal-val ((m <Injury>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:alertness_verbal-val is deprecated.  Use messages-msg:alertness_verbal instead.")
  (alertness_verbal m))

(cl:ensure-generic-function 'alertness_motor-val :lambda-list '(m))
(cl:defmethod alertness_motor-val ((m <Injury>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:alertness_motor-val is deprecated.  Use messages-msg:alertness_motor instead.")
  (alertness_motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Injury>) ostream)
  "Serializes a message object of type '<Injury>"
  (cl:let* ((signed (cl:slot-value msg 'trauma_head)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trauma_torso)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trauma_lower_ext)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trauma_upper_ext)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trauma_ocular)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alertness_ocular)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alertness_verbal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alertness_motor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Injury>) istream)
  "Deserializes a message object of type '<Injury>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trauma_head) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trauma_torso) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trauma_lower_ext) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trauma_upper_ext) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trauma_ocular) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alertness_ocular) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alertness_verbal) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alertness_motor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Injury>)))
  "Returns string type for a message object of type '<Injury>"
  "messages/Injury")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Injury)))
  "Returns string type for a message object of type 'Injury"
  "messages/Injury")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Injury>)))
  "Returns md5sum for a message object of type '<Injury>"
  "ea36f64e92a1aa168772ef9085fb9507")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Injury)))
  "Returns md5sum for a message object of type 'Injury"
  "ea36f64e92a1aa168772ef9085fb9507")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Injury>)))
  "Returns full string definition for message of type '<Injury>"
  (cl:format cl:nil "int32   trauma_head~%int32   trauma_torso~%int32   trauma_lower_ext~%int32   trauma_upper_ext~%int32   trauma_ocular~%int32   alertness_ocular~%int32   alertness_verbal~%int32   alertness_motor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Injury)))
  "Returns full string definition for message of type 'Injury"
  (cl:format cl:nil "int32   trauma_head~%int32   trauma_torso~%int32   trauma_lower_ext~%int32   trauma_upper_ext~%int32   trauma_ocular~%int32   alertness_ocular~%int32   alertness_verbal~%int32   alertness_motor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Injury>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Injury>))
  "Converts a ROS message object to a list"
  (cl:list 'Injury
    (cl:cons ':trauma_head (trauma_head msg))
    (cl:cons ':trauma_torso (trauma_torso msg))
    (cl:cons ':trauma_lower_ext (trauma_lower_ext msg))
    (cl:cons ':trauma_upper_ext (trauma_upper_ext msg))
    (cl:cons ':trauma_ocular (trauma_ocular msg))
    (cl:cons ':alertness_ocular (alertness_ocular msg))
    (cl:cons ':alertness_verbal (alertness_verbal msg))
    (cl:cons ':alertness_motor (alertness_motor msg))
))
