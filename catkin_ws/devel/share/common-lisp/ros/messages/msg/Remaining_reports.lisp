; Auto-generated. Do not edit!


(cl:in-package messages-msg)


;//! \htmlinclude Remaining_reports.msg.html

(cl:defclass <Remaining_reports> (roslisp-msg-protocol:ros-message)
  ((critical
    :reader critical
    :initarg :critical
    :type messages-msg:Critical
    :initform (cl:make-instance 'messages-msg:Critical))
   (vitals
    :reader vitals
    :initarg :vitals
    :type messages-msg:Vitals
    :initform (cl:make-instance 'messages-msg:Vitals))
   (injury
    :reader injury
    :initarg :injury
    :type messages-msg:Injury
    :initform (cl:make-instance 'messages-msg:Injury)))
)

(cl:defclass Remaining_reports (<Remaining_reports>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Remaining_reports>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Remaining_reports)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name messages-msg:<Remaining_reports> is deprecated: use messages-msg:Remaining_reports instead.")))

(cl:ensure-generic-function 'critical-val :lambda-list '(m))
(cl:defmethod critical-val ((m <Remaining_reports>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:critical-val is deprecated.  Use messages-msg:critical instead.")
  (critical m))

(cl:ensure-generic-function 'vitals-val :lambda-list '(m))
(cl:defmethod vitals-val ((m <Remaining_reports>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:vitals-val is deprecated.  Use messages-msg:vitals instead.")
  (vitals m))

(cl:ensure-generic-function 'injury-val :lambda-list '(m))
(cl:defmethod injury-val ((m <Remaining_reports>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader messages-msg:injury-val is deprecated.  Use messages-msg:injury instead.")
  (injury m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Remaining_reports>) ostream)
  "Serializes a message object of type '<Remaining_reports>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'critical) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vitals) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'injury) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Remaining_reports>) istream)
  "Deserializes a message object of type '<Remaining_reports>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'critical) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vitals) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'injury) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Remaining_reports>)))
  "Returns string type for a message object of type '<Remaining_reports>"
  "messages/Remaining_reports")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Remaining_reports)))
  "Returns string type for a message object of type 'Remaining_reports"
  "messages/Remaining_reports")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Remaining_reports>)))
  "Returns md5sum for a message object of type '<Remaining_reports>"
  "d18ac92b88307708af88871aae17ed91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Remaining_reports)))
  "Returns md5sum for a message object of type 'Remaining_reports"
  "d18ac92b88307708af88871aae17ed91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Remaining_reports>)))
  "Returns full string definition for message of type '<Remaining_reports>"
  (cl:format cl:nil "Critical    critical~%Vitals      vitals ~%Injury      injury~%================================================================================~%MSG: messages/Critical~%int32   hemorrhage~%int32   distress~%================================================================================~%MSG: messages/Vitals~%int32 heart~%int32 respiratory~%================================================================================~%MSG: messages/Injury~%int32   trauma_head~%int32   trauma_torso~%int32   trauma_lower_ext~%int32   trauma_upper_ext~%int32   trauma_ocular~%int32   alertness_ocular~%int32   alertness_verbal~%int32   alertness_motor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Remaining_reports)))
  "Returns full string definition for message of type 'Remaining_reports"
  (cl:format cl:nil "Critical    critical~%Vitals      vitals ~%Injury      injury~%================================================================================~%MSG: messages/Critical~%int32   hemorrhage~%int32   distress~%================================================================================~%MSG: messages/Vitals~%int32 heart~%int32 respiratory~%================================================================================~%MSG: messages/Injury~%int32   trauma_head~%int32   trauma_torso~%int32   trauma_lower_ext~%int32   trauma_upper_ext~%int32   trauma_ocular~%int32   alertness_ocular~%int32   alertness_verbal~%int32   alertness_motor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Remaining_reports>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'critical))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vitals))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'injury))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Remaining_reports>))
  "Converts a ROS message object to a list"
  (cl:list 'Remaining_reports
    (cl:cons ':critical (critical msg))
    (cl:cons ':vitals (vitals msg))
    (cl:cons ':injury (injury msg))
))
