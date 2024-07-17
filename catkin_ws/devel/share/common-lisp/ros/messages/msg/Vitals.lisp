; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude Vitals.msg.html

(cl:defclass <Vitals> (roslisp-msg-protocol:ros-message)
  ((heart
    :reader heart
    :initarg :heart
    :type cl:integer
    :initform 0)
   (respiratory
    :reader respiratory
    :initarg :respiratory
    :type cl:integer
    :initform 0))
)

(cl:defclass Vitals (<Vitals>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vitals>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vitals)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<Vitals> is deprecated: use messages-msg:Vitals instead.")))

(cl:ensure-generic-function 'heart-val :lambda-list '(m))
(cl:defmethod heart-val ((m <Vitals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:heart-val is deprecated.  Use messages-msg:heart instead.")
  (heart m))

(cl:ensure-generic-function 'respiratory-val :lambda-list '(m))
(cl:defmethod respiratory-val ((m <Vitals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:respiratory-val is deprecated.  Use messages-msg:respiratory instead.")
  (respiratory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vitals>) ostream)
  "Serializes a message object of type '<Vitals>"
  (cl:let* ((signed (cl:slot-value msg 'heart)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'respiratory)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vitals>) istream)
  "Deserializes a message object of type '<Vitals>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'heart) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'respiratory) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vitals>)))
  "Returns string type for a message object of type '<Vitals>"
  "messages/Vitals")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vitals)))
  "Returns string type for a message object of type 'Vitals"
  "messages/Vitals")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vitals>)))
  "Returns md5sum for a message object of type '<Vitals>"
  "0d419d9c4365749288a9e6c5033a7520")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vitals)))
  "Returns md5sum for a message object of type 'Vitals"
  "0d419d9c4365749288a9e6c5033a7520")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vitals>)))
  "Returns full string definition for message of type '<Vitals>"
  (cl:format cl:nil "int32 heart~%int32 respiratory~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vitals)))
  "Returns full string definition for message of type 'Vitals"
  (cl:format cl:nil "int32 heart~%int32 respiratory~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vitals>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vitals>))
  "Converts a ROS message object to a list"
  (cl:list 'Vitals
    (cl:cons ':heart (heart msg))
    (cl:cons ':respiratory (respiratory msg))
))
