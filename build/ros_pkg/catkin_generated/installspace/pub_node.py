#!/use/bin/env
import rospy                                                                         #import the python library for ROS
from std_msgs.msg import String                                                      #import the stringe message from the std_msgs package   
from ros_pkg.msg import position
def talk_to_me() :                                                                   #Define a function to work
    pub = rospy.Publisher('talking_topic', position, queue_size=10)                    #create a publisher object , that will publish on the topic
    rospy.init_node('publisher_node', anonymous= True)                               #Intiating a Node named "topic_publisher"
    rate=rospy.Rate(1)                                                               #set a publish rate of 1HZ
    rospy.loginfo("Publisher Node Started, now publishing messages ")               # indication that node is runing
    while not rospy.is_shutdown () :                                                 # create a loop that will go until someone stopds the program execution
        msg = position()                                  #creating a msg variable what it want to publish
        msg.message = "my position is: "
        msg.x = 2.0
        msg.y = 1.5
        pub.publish(msg)                                                            #creating a msg with in the 'msg' variable
        rate.sleep()                                                                #make sure the publish rate maintain at 1 hz
if __name__ == '__main__':
    try:
        talk_to_me()
    except rospy.ROSInterruptException:
        pass
    