#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32

error_count = 0
last_id = -1
def callback(data):
    global error_count
    global last_id
    #rospy.loginfo(rospy.get_caller_id() + "I heard %d (errors %d)", data.data, error_count)
    if(data.data - last_id) != 1:
	rospy.loginfo(rospy.get_caller_id() + " discontinuity! received %d after %d", data.data, last_id)
        error_count = error_count + 1
    if(data.data % 10000)==0:
	rospy.loginfo(rospy.get_caller_id() + " reached id: %d (errors: %d)", data.data, error_count)
        
    last_id = data.data
    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("chatter", Int32, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
