#!/usr/bin/env python
import rospy
import numpy as np
from wk3_pkg.msg import signal_msg
from std_msgs.msg import Float32


flagSq=0
flagSt=0


if __name__=='__main__':
       ## Declare the new message to be used
   signal_pub=rospy.Publisher("signal",Float32, queue_size=10)   
   rospy.init_node("signal_generator")
   rate = rospy.Rate(10)
   init_time = rospy.get_time()
   msg = Float32()






   while not rospy.is_shutdown():


       time = rospy.get_time()-init_time
       amplitude= rospy.get_param("/amp", 255)
       rotation= rospy.get_param("/rotate", "left")
       type_sig= rospy.get_param("/type", "step")
  


       rospy.loginfo("Rotation to %s of  %s wave type",rotation, type_sig)


       if type_sig=='sine':
           signal = amplitude*np.sin(time)


       elif type_sig=='square':
          
           if flagSq==1:
               signal=amplitude
               flagSq=0
               rospy.sleep(3)
           elif flagSq==0:
               signal=amplitude-amplitude/2
               flagSq=1
               rospy.sleep(3)
          
      


       elif type_sig=='step':
           signal=0
           if flagSt>5:
               signal=amplitude/1.2
           else:
               signal=0
               flagSt= flagSt+1




       else:
           rospy.loginfo("Not an option")


       rospy.sleep(1)
       ## Fill the message with the required information  
       msg=signal
       ## Publish the message
       signal_pub.publish(msg)


       rospy.loginfo("The signal value is: %f at a time %f", signal, time)
       rate.sleep()