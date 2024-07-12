;; Auto-generated. Do not edit!


(when (boundp 'messages::Prediction_element)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'Prediction_element (find-package "MESSAGES")))
(unless (find-package "MESSAGES::PREDICTION_ELEMENT")
  (make-package "MESSAGES::PREDICTION_ELEMENT"))

(in-package "ROS")
;;//! \htmlinclude Prediction_element.msg.html


(defclass messages::Prediction_element
  :super ros::object
  :slots (_injury_class _confidence ))

(defmethod messages::Prediction_element
  (:init
   (&key
    ((:injury_class __injury_class) 0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _injury_class (round __injury_class))
   (setq _confidence (float __confidence))
   self)
  (:injury_class
   (&optional __injury_class)
   (if __injury_class (setq _injury_class __injury_class)) _injury_class)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; int32 _injury_class
    4
    ;; float64 _confidence
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _injury_class
       (write-long _injury_class s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _injury_class
     (setq _injury_class (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get messages::Prediction_element :md5sum-) "499cd330dc55ccd91a9dc7aa5896e1f7")
(setf (get messages::Prediction_element :datatype-) "messages/Prediction_element")
(setf (get messages::Prediction_element :definition-)
      "int32   injury_class
float64 confidence
")



(provide :messages/Prediction_element "499cd330dc55ccd91a9dc7aa5896e1f7")


