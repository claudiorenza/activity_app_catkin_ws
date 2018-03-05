; Auto-generated. Do not edit!


(cl:in-package trigger_messages-srv)


;//! \htmlinclude MessageServer-request.msg.html

(cl:defclass <MessageServer-request> (roslisp-msg-protocol:ros-message)
  ((switch_on
    :reader switch_on
    :initarg :switch_on
    :type cl:boolean
    :initform cl:nil)
   (device_name
    :reader device_name
    :initarg :device_name
    :type cl:string
    :initform ""))
)

(cl:defclass MessageServer-request (<MessageServer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageServer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageServer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trigger_messages-srv:<MessageServer-request> is deprecated: use trigger_messages-srv:MessageServer-request instead.")))

(cl:ensure-generic-function 'switch_on-val :lambda-list '(m))
(cl:defmethod switch_on-val ((m <MessageServer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trigger_messages-srv:switch_on-val is deprecated.  Use trigger_messages-srv:switch_on instead.")
  (switch_on m))

(cl:ensure-generic-function 'device_name-val :lambda-list '(m))
(cl:defmethod device_name-val ((m <MessageServer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trigger_messages-srv:device_name-val is deprecated.  Use trigger_messages-srv:device_name instead.")
  (device_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageServer-request>) ostream)
  "Serializes a message object of type '<MessageServer-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'switch_on) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageServer-request>) istream)
  "Deserializes a message object of type '<MessageServer-request>"
    (cl:setf (cl:slot-value msg 'switch_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageServer-request>)))
  "Returns string type for a service object of type '<MessageServer-request>"
  "trigger_messages/MessageServerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageServer-request)))
  "Returns string type for a service object of type 'MessageServer-request"
  "trigger_messages/MessageServerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageServer-request>)))
  "Returns md5sum for a message object of type '<MessageServer-request>"
  "3bc6de3448497ea3bff53c4a26a52c04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageServer-request)))
  "Returns md5sum for a message object of type 'MessageServer-request"
  "3bc6de3448497ea3bff53c4a26a52c04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageServer-request>)))
  "Returns full string definition for message of type '<MessageServer-request>"
  (cl:format cl:nil "bool switch_on~%string device_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageServer-request)))
  "Returns full string definition for message of type 'MessageServer-request"
  (cl:format cl:nil "bool switch_on~%string device_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageServer-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'device_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageServer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageServer-request
    (cl:cons ':switch_on (switch_on msg))
    (cl:cons ':device_name (device_name msg))
))
;//! \htmlinclude MessageServer-response.msg.html

(cl:defclass <MessageServer-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MessageServer-response (<MessageServer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageServer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageServer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trigger_messages-srv:<MessageServer-response> is deprecated: use trigger_messages-srv:MessageServer-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <MessageServer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trigger_messages-srv:feedback-val is deprecated.  Use trigger_messages-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageServer-response>) ostream)
  "Serializes a message object of type '<MessageServer-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feedback) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageServer-response>) istream)
  "Deserializes a message object of type '<MessageServer-response>"
    (cl:setf (cl:slot-value msg 'feedback) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageServer-response>)))
  "Returns string type for a service object of type '<MessageServer-response>"
  "trigger_messages/MessageServerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageServer-response)))
  "Returns string type for a service object of type 'MessageServer-response"
  "trigger_messages/MessageServerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageServer-response>)))
  "Returns md5sum for a message object of type '<MessageServer-response>"
  "3bc6de3448497ea3bff53c4a26a52c04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageServer-response)))
  "Returns md5sum for a message object of type 'MessageServer-response"
  "3bc6de3448497ea3bff53c4a26a52c04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageServer-response>)))
  "Returns full string definition for message of type '<MessageServer-response>"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageServer-response)))
  "Returns full string definition for message of type 'MessageServer-response"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageServer-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageServer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageServer-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MessageServer)))
  'MessageServer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MessageServer)))
  'MessageServer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageServer)))
  "Returns string type for a service object of type '<MessageServer>"
  "trigger_messages/MessageServer")