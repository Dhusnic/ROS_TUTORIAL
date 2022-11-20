import rospy
from ros_pkg.srv import multiplier, multiplierResponse #import the service message python classes genarated from multiplier.srv

def callback(request):
    return multiplierResponse(request.a * request.b)   #the service Response , in this case EmptyResponses  
def multiply():
    rospy.init_node("multiply_service")
    service = rospy.Service("multiplier",multiplier,callback) #create the service called my_service with the defined callback
    rospy.spin()                                       #mantain the service open
    
if __name__ == '__main__':
     multiply()   