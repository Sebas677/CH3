;; Auto-generated. Do not edit!


(when (boundp 'wk3_pkg::signal_msg)
  (if (not (find-package "WK3_PKG"))
    (make-package "WK3_PKG"))
  (shadow 'signal_msg (find-package "WK3_PKG")))
(unless (find-package "WK3_PKG::SIGNAL_MSG")
  (make-package "WK3_PKG::SIGNAL_MSG"))

(in-package "ROS")
;;//! \htmlinclude signal_msg.msg.html


(defclass wk3_pkg::signal_msg
  :super ros::object
  :slots (_output_val ))

(defmethod wk3_pkg::signal_msg
  (:init
   (&key
    ((:output_val __output_val) 0.0)
    )
   (send-super :init)
   (setq _output_val (float __output_val))
   self)
  (:output_val
   (&optional __output_val)
   (if __output_val (setq _output_val __output_val)) _output_val)
  (:serialization-length
   ()
   (+
    ;; float32 _output_val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _output_val
       (sys::poke _output_val (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _output_val
     (setq _output_val (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get wk3_pkg::signal_msg :md5sum-) "d4765125923055d13d8bbf99b4bfa51a")
(setf (get wk3_pkg::signal_msg :datatype-) "wk3_pkg/signal_msg")
(setf (get wk3_pkg::signal_msg :definition-)
      "float32 output_val
")



(provide :wk3_pkg/signal_msg "d4765125923055d13d8bbf99b4bfa51a")


