#!/use/bin/env

from gpg import Data
import rospy                                                                         #import the python library for ROS
from std_msgs.msg import String                                                      #import the stringe message from the std_msgs package   
from ros_pkg.msg import position

def callback(data):                                                               #define a function called 'callback' that receives a parameter
    rospy.loginfo("%s X: %f Y: %f", data.message,data.x,data.y)                                 #loinfo can be used in the place of printf 
def listener() :                                                                  #Define a function called listener to work
     rospy.init_node("sub_node",anonymous=True)                                   #intiate a node called 'sub_node'
     rospy.Subscriber('talking_topic', position , callback)                         #create a subscriber object that will listen to the publisher
     rospy.spin()                                                                 #create a loop that will keep the program in execution




if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
    