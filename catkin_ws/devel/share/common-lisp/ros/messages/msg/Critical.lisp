; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude Critical.msg.html

(cl:defclass <Critical> (roslisp-msg-protocol:ros-message)
  ((hemorrhage
    :reader hemorrhage
    :initarg :hemorrhage
    :type cl:integer
    :initform 0)
   (distress
    :reader distress
    :initarg :distress
    :type cl:integer
    :initform 0))
)

(cl:defclass Critical (<Critical>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Critical>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Critical)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<Critical> is deprecated: use messages-msg:Critical instead.")))

(cl:ensure-generic-function 'hemorrhage-val :lambda-list '(m))
(cl:defmethod hemorrhage-val ((m <Critical>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:hemorrhage-val is deprecated.  Use messages-msg:hemorrhage instead.")
  (hemorrhage m))

(cl:ensure-generic-function 'distress-val :lambda-list '(m))
(cl:defmethod distress-val ((m <Critical>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:distress-val is deprecated.  Use messages-msg:distress instead.")
  (distress m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Critical>) ostream)
  "Serializes a message object of type '<Critical>"
  (cl:let* ((signed (cl:slot-value msg 'hemorrhage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'distress)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Critical>) istream)
  "Deserializes a message object of type '<Critical>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hemorrhage) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distress) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Critical>)))
  "Returns string type for a message object of type '<Critical>"
  "messages/Critical")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Critical)))
  "Returns string type for a message object of type 'Critical"
  "messages/Critical")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Critical>)))
  "Returns md5sum for a message object of type '<Critical>"
  "6b92d3e2e62f03348662932b496ff104")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Critical)))
  "Returns md5sum for a message object of type 'Critical"
  "6b92d3e2e62f03348662932b496ff104")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Critical>)))
  "Returns full string definition for message of type '<Critical>"
  (cl:format cl:nil "int32   hemorrhage~%int32   distress~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Critical)))
  "Returns full string definition for message of type 'Critical"
  (cl:format cl:nil "int32   hemorrhage~%int32   distress~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Critical>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Critical>))
  "Converts a ROS message object to a list"
  (cl:list 'Critical
    (cl:cons ':hemorrhage (hemorrhage msg))
    (cl:cons ':distress (distress msg))
))
