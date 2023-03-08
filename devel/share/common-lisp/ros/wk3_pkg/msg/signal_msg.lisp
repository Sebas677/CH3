; Auto-generated. Do not edit!


(cl:in-package wk3_pkg-msg)


;//! \htmlinclude signal_msg.msg.html

(cl:defclass <signal_msg> (roslisp-msg-protocol:ros-message)
  ((output_val
    :reader output_val
    :initarg :output_val
    :type cl:float
    :initform 0.0))
)

(cl:defclass signal_msg (<signal_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <signal_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'signal_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wk3_pkg-msg:<signal_msg> is deprecated: use wk3_pkg-msg:signal_msg instead.")))

(cl:ensure-generic-function 'output_val-val :lambda-list '(m))
(cl:defmethod output_val-val ((m <signal_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wk3_pkg-msg:output_val-val is deprecated.  Use wk3_pkg-msg:output_val instead.")
  (output_val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <signal_msg>) ostream)
  "Serializes a message object of type '<signal_msg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'output_val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <signal_msg>) istream)
  "Deserializes a message object of type '<signal_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output_val) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<signal_msg>)))
  "Returns string type for a message object of type '<signal_msg>"
  "wk3_pkg/signal_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'signal_msg)))
  "Returns string type for a message object of type 'signal_msg"
  "wk3_pkg/signal_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<signal_msg>)))
  "Returns md5sum for a message object of type '<signal_msg>"
  "d4765125923055d13d8bbf99b4bfa51a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'signal_msg)))
  "Returns md5sum for a message object of type 'signal_msg"
  "d4765125923055d13d8bbf99b4bfa51a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<signal_msg>)))
  "Returns full string definition for message of type '<signal_msg>"
  (cl:format cl:nil "float32 output_val~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'signal_msg)))
  "Returns full string definition for message of type 'signal_msg"
  (cl:format cl:nil "float32 output_val~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <signal_msg>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <signal_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'signal_msg
    (cl:cons ':output_val (output_val msg))
))
