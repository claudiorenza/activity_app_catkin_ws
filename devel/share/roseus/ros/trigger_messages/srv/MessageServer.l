;; Auto-generated. Do not edit!


(when (boundp 'trigger_messages::MessageServer)
  (if (not (find-package "TRIGGER_MESSAGES"))
    (make-package "TRIGGER_MESSAGES"))
  (shadow 'MessageServer (find-package "TRIGGER_MESSAGES")))
(unless (find-package "TRIGGER_MESSAGES::MESSAGESERVER")
  (make-package "TRIGGER_MESSAGES::MESSAGESERVER"))
(unless (find-package "TRIGGER_MESSAGES::MESSAGESERVERREQUEST")
  (make-package "TRIGGER_MESSAGES::MESSAGESERVERREQUEST"))
(unless (find-package "TRIGGER_MESSAGES::MESSAGESERVERRESPONSE")
  (make-package "TRIGGER_MESSAGES::MESSAGESERVERRESPONSE"))

(in-package "ROS")





(defclass trigger_messages::MessageServerRequest
  :super ros::object
  :slots (_switch_on _device_name ))

(defmethod trigger_messages::MessageServerRequest
  (:init
   (&key
    ((:switch_on __switch_on) nil)
    ((:device_name __device_name) "")
    )
   (send-super :init)
   (setq _switch_on __switch_on)
   (setq _device_name (string __device_name))
   self)
  (:switch_on
   (&optional __switch_on)
   (if __switch_on (setq _switch_on __switch_on)) _switch_on)
  (:device_name
   (&optional __device_name)
   (if __device_name (setq _device_name __device_name)) _device_name)
  (:serialization-length
   ()
   (+
    ;; bool _switch_on
    1
    ;; string _device_name
    4 (length _device_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _switch_on
       (if _switch_on (write-byte -1 s) (write-byte 0 s))
     ;; string _device_name
       (write-long (length _device_name) s) (princ _device_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _switch_on
     (setq _switch_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _device_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass trigger_messages::MessageServerResponse
  :super ros::object
  :slots (_feedback ))

(defmethod trigger_messages::MessageServerResponse
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

(defclass trigger_messages::MessageServer
  :super ros::object
  :slots ())

(setf (get trigger_messages::MessageServer :md5sum-) "3bc6de3448497ea3bff53c4a26a52c04")
(setf (get trigger_messages::MessageServer :datatype-) "trigger_messages/MessageServer")
(setf (get trigger_messages::MessageServer :request) trigger_messages::MessageServerRequest)
(setf (get trigger_messages::MessageServer :response) trigger_messages::MessageServerResponse)

(defmethod trigger_messages::MessageServerRequest
  (:response () (instance trigger_messages::MessageServerResponse :init)))

(setf (get trigger_messages::MessageServerRequest :md5sum-) "3bc6de3448497ea3bff53c4a26a52c04")
(setf (get trigger_messages::MessageServerRequest :datatype-) "trigger_messages/MessageServerRequest")
(setf (get trigger_messages::MessageServerRequest :definition-)
      "bool switch_on
string device_name
---
bool feedback

")

(setf (get trigger_messages::MessageServerResponse :md5sum-) "3bc6de3448497ea3bff53c4a26a52c04")
(setf (get trigger_messages::MessageServerResponse :datatype-) "trigger_messages/MessageServerResponse")
(setf (get trigger_messages::MessageServerResponse :definition-)
      "bool switch_on
string device_name
---
bool feedback

")



(provide :trigger_messages/MessageServer "3bc6de3448497ea3bff53c4a26a52c04")


