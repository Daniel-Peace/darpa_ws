; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude Prediction.msg.html

(cl:defclass <Prediction> (roslisp-msg-protocol:ros-message)
  ((prediction_elements
    :reader prediction_elements
    :initarg :prediction_elements
    :type (cl:vector messages-msg:Prediction_element)
   :initform (cl:make-array 0 :element-type 'messages-msg:Prediction_element :initial-element (cl:make-instance 'messages-msg:Prediction_element))))
)

(cl:defclass Prediction (<Prediction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Prediction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Prediction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<Prediction> is deprecated: use messages-msg:Prediction instead.")))

(cl:ensure-generic-function 'prediction_elements-val :lambda-list '(m))
(cl:defmethod prediction_elements-val ((m <Prediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:prediction_elements-val is deprecated.  Use messages-msg:prediction_elements instead.")
  (prediction_elements m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Prediction>) ostream)
  "Serializes a message object of type '<Prediction>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'prediction_elements))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'prediction_elements))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Prediction>) istream)
  "Deserializes a message object of type '<Prediction>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'prediction_elements) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'prediction_elements)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'messages-msg:Prediction_element))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Prediction>)))
  "Returns string type for a message object of type '<Prediction>"
  "messages/Prediction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Prediction)))
  "Returns string type for a message object of type 'Prediction"
  "messages/Prediction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Prediction>)))
  "Returns md5sum for a message object of type '<Prediction>"
  "8cd1b69eb03fe3bdb64009a9530a56a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Prediction)))
  "Returns md5sum for a message object of type 'Prediction"
  "8cd1b69eb03fe3bdb64009a9530a56a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Prediction>)))
  "Returns full string definition for message of type '<Prediction>"
  (cl:format cl:nil "Prediction_element[] prediction_elements~%================================================================================~%MSG: messages/Prediction_element~%int32   injury_class~%float64 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Prediction)))
  "Returns full string definition for message of type 'Prediction"
  (cl:format cl:nil "Prediction_element[] prediction_elements~%================================================================================~%MSG: messages/Prediction_element~%int32   injury_class~%float64 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Prediction>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'prediction_elements) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Prediction>))
  "Converts a ROS message object to a list"
  (cl:list 'Prediction
    (cl:cons ':prediction_elements (prediction_elements msg))
))
