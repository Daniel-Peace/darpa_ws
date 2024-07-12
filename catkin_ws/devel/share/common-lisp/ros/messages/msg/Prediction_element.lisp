; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude Prediction_element.msg.html

(cl:defclass <Prediction_element> (roslisp-msg-protocol:ros-message)
  ((injury_class
    :reader injury_class
    :initarg :injury_class
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass Prediction_element (<Prediction_element>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Prediction_element>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Prediction_element)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<Prediction_element> is deprecated: use messages-msg:Prediction_element instead.")))

(cl:ensure-generic-function 'injury_class-val :lambda-list '(m))
(cl:defmethod injury_class-val ((m <Prediction_element>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:injury_class-val is deprecated.  Use messages-msg:injury_class instead.")
  (injury_class m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Prediction_element>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:confidence-val is deprecated.  Use messages-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Prediction_element>) ostream)
  "Serializes a message object of type '<Prediction_element>"
  (cl:let* ((signed (cl:slot-value msg 'injury_class)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Prediction_element>) istream)
  "Deserializes a message object of type '<Prediction_element>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'injury_class) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Prediction_element>)))
  "Returns string type for a message object of type '<Prediction_element>"
  "messages/Prediction_element")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Prediction_element)))
  "Returns string type for a message object of type 'Prediction_element"
  "messages/Prediction_element")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Prediction_element>)))
  "Returns md5sum for a message object of type '<Prediction_element>"
  "499cd330dc55ccd91a9dc7aa5896e1f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Prediction_element)))
  "Returns md5sum for a message object of type 'Prediction_element"
  "499cd330dc55ccd91a9dc7aa5896e1f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Prediction_element>)))
  "Returns full string definition for message of type '<Prediction_element>"
  (cl:format cl:nil "int32   injury_class~%float64 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Prediction_element)))
  "Returns full string definition for message of type 'Prediction_element"
  (cl:format cl:nil "int32   injury_class~%float64 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Prediction_element>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Prediction_element>))
  "Converts a ROS message object to a list"
  (cl:list 'Prediction_element
    (cl:cons ':injury_class (injury_class msg))
    (cl:cons ':confidence (confidence msg))
))
