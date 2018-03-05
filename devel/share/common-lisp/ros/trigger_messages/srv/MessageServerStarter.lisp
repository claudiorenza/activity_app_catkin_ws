; Auto-generated. Do not edit!


(cl:in-package trigger_messages-srv)


;//! \htmlinclude MessageServerStarter-request.msg.html

(cl:defclass <MessageServerStarter-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MessageServerStarter-request (<MessageServerStarter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageServerStarter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageServerStarter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trigger_messages-srv:<MessageServerStarter-request> is deprecated: use trigger_messages-srv:MessageServerStarter-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <MessageServerStarter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trigger_messages-srv:start-val is deprecated.  Use trigger_messages-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageServerStarter-request>) ostream)
  "Serializes a message object of type '<MessageServerStarter-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageServerStarter-request>) istream)
  "Deserializes a message object of type '<MessageServerStarter-request>"
    (cl:setf (cl:slot-value msg 'start) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageServerStarter-request>)))
  "Returns string type for a service object of type '<MessageServerStarter-request>"
  "trigger_messages/MessageServerStarterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageServerStarter-request)))
  "Returns string type for a service object of type 'MessageServerStarter-request"
  "trigger_messages/MessageServerStarterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageServerStarter-request>)))
  "Returns md5sum for a message object of type '<MessageServerStarter-request>"
  "46763c709ef1bd75530a53ff3947f28e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageServerStarter-request)))
  "Returns md5sum for a message object of type 'MessageServerStarter-request"
  "46763c709ef1bd75530a53ff3947f28e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageServerStarter-request>)))
  "Returns full string definition for message of type '<MessageServerStarter-request>"
  (cl:format cl:nil "bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageServerStarter-request)))
  "Returns full string definition for message of type 'MessageServerStarter-request"
  (cl:format cl:nil "bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageServerStarter-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageServerStarter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageServerStarter-request
    (cl:cons ':start (start msg))
))
;//! \htmlinclude MessageServerStarter-response.msg.html

(cl:defclass <MessageServerStarter-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MessageServerStarter-response (<MessageServerStarter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageServerStarter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageServerStarter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trigger_messages-srv:<MessageServerStarter-response> is deprecated: use trigger_messages-srv:MessageServerStarter-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <MessageServerStarter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trigger_messages-srv:feedback-val is deprecated.  Use trigger_messages-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageServerStarter-response>) ostream)
  "Serializes a message object of type '<MessageServerStarter-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feedback) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageServerStarter-response>) istream)
  "Deserializes a message object of type '<MessageServerStarter-response>"
    (cl:setf (cl:slot-value msg 'feedback) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageServerStarter-response>)))
  "Returns string type for a service object of type '<MessageServerStarter-response>"
  "trigger_messages/MessageServerStarterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageServerStarter-response)))
  "Returns string type for a service object of type 'MessageServerStarter-response"
  "trigger_messages/MessageServerStarterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageServerStarter-response>)))
  "Returns md5sum for a message object of type '<MessageServerStarter-response>"
  "46763c709ef1bd75530a53ff3947f28e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageServerStarter-response)))
  "Returns md5sum for a message object of type 'MessageServerStarter-response"
  "46763c709ef1bd75530a53ff3947f28e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageServerStarter-response>)))
  "Returns full string definition for message of type '<MessageServerStarter-response>"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageServerStarter-response)))
  "Returns full string definition for message of type 'MessageServerStarter-response"
  (cl:format cl:nil "bool feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageServerStarter-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageServerStarter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageServerStarter-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MessageServerStarter)))
  'MessageServerStarter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MessageServerStarter)))
  'MessageServerStarter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageServerStarter)))
  "Returns string type for a service object of type '<MessageServerStarter>"
  "trigger_messages/MessageServerStarter")