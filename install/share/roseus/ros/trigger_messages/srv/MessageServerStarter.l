;; Auto-generated. Do not edit!


(when (boundp 'trigger_messages::MessageServerStarter)
  (if (not (find-package "TRIGGER_MESSAGES"))
    (make-package "TRIGGER_MESSAGES"))
  (shadow 'MessageServerStarter (find-package "TRIGGER_MESSAGES")))
(unless (find-package "TRIGGER_MESSAGES::MESSAGESERVERSTARTER")
  (make-package "TRIGGER_MESSAGES::MESSAGESERVERSTARTER"))
(unless (find-package "TRIGGER_MESSAGES::MESSAGESERVERSTARTERREQUEST")
  (make-package "TRIGGER_MESSAGES::MESSAGESERVERSTARTERREQUEST"))
(unless (find-package "TRIGGER_MESSAGES::MESSAGESERVERSTARTERRESPONSE")
  (make-package "TRIGGER_MESSAGES::MESSAGESERVERSTARTERRESPONSE"))

(in-package "ROS")





(defclass trigger_messages::MessageServerStarterRequest
  :super ros::object
  :slots (_start ))

(defmethod trigger_messages::MessageServerStarterRequest
  (:init
   (&key
    ((:start __start) nil)
    )
   (send-super :init)
   (setq _start __start)
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; bool _start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start
       (if _start (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start
     (setq _start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass trigger_messages::MessageServerStarterResponse
  :super ros::object
  :slots (_feedback ))

(defmethod trigger_messages::MessageServerStarterResponse
  (:init
   (&key
    ((:feedback __feedback) nil)
    )
   (send-super :init)
   (setq _feedback __feedback)
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; bool _feedback
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _feedback
       (if _feedback (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _feedback
     (setq _feedback (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass trigger_messages::MessageServerStarter
  :super ros::object
  :slots ())

(setf (get trigger_messages::MessageServerStarter :md5sum-) "46763c709ef1bd75530a53ff3947f28e")
(setf (get trigger_messages::MessageServerStarter :datatype-) "trigger_messages/MessageServerStarter")
(setf (get trigger_messages::MessageServerStarter :request) trigger_messages::MessageServerStarterRequest)
(setf (get trigger_messages::MessageServerStarter :response) trigger_messages::MessageServerStarterResponse)

(defmethod trigger_messages::MessageServerStarterRequest
  (:response () (instance trigger_messages::MessageServerStarterResponse :init)))

(setf (get trigger_messages::MessageServerStarterRequest :md5sum-) "46763c709ef1bd75530a53ff3947f28e")
(setf (get trigger_messages::MessageServerStarterRequest :datatype-) "trigger_messages/MessageServerStarterRequest")
(setf (get trigger_messages::MessageServerStarterRequest :definition-)
      "bool start
---
bool feedback

")

(setf (get trigger_messages::MessageServerStarterResponse :md5sum-) "46763c709ef1bd75530a53ff3947f28e")
(setf (get trigger_messages::MessageServerStarterResponse :datatype-) "trigger_messages/MessageServerStarterResponse")
(setf (get trigger_messages::MessageServerStarterResponse :definition-)
      "bool start
---
bool feedback

")



(provide :trigger_messages/MessageServerStarter "46763c709ef1bd75530a53ff3947f28e")


