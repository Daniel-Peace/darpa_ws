;; Auto-generated. Do not edit!


(when (boundp 'messages::Prediction)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'Prediction (find-package "MESSAGES")))
(unless (find-package "MESSAGES::PREDICTION")
  (make-package "MESSAGES::PREDICTION"))

(in-package "ROS")
;;//! \htmlinclude Prediction.msg.html


(defclass messages::Prediction
  :super ros::object
  :slots (_prediction_elements ))

(defmethod messages::Prediction
  (:init
   (&key
    ((:prediction_elements __prediction_elements) ())
    )
   (send-super :init)
   (setq _prediction_elements __prediction_elements)
   self)
  (:prediction_elements
   (&rest __prediction_elements)
   (if (keywordp (car __prediction_elements))
       (send* _prediction_elements __prediction_elements)
     (progn
       (if __prediction_elements (setq _prediction_elements (car __prediction_elements)))
       _prediction_elements)))
  (:serialization-length
   ()
   (+
    ;; messages/Prediction_element[] _prediction_elements
    (apply #'+ (send-all _prediction_elements :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; messages/Prediction_element[] _prediction_elements
     (write-long (length _prediction_elements) s)
     (dolist (elem _prediction_elements)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; messages/Prediction_element[] _prediction_elements
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prediction_elements (let (r) (dotimes (i n) (push (instance messages::Prediction_element :init) r)) r))
     (dolist (elem- _prediction_elements)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get messages::Prediction :md5sum-) "8cd1b69eb03fe3bdb64009a9530a56a9")
(setf (get messages::Prediction :datatype-) "messages/Prediction")
(setf (get messages::Prediction :definition-)
      "Prediction_element[] prediction_elements
================================================================================
MSG: messages/Prediction_element
int32   injury_class
float64 confidence
")



(provide :messages/Prediction "8cd1b69eb03fe3bdb64009a9530a56a9")


