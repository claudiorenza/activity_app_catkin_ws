#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <map>
#include "trigger_messages/MessageServer.h"

int counter_entry = 0;
bool lamp = false;

std::map<std::string, int> map_clients;
/*
void talker()	{
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
  ros::Rate loop_rate(1);
  int count = 0;
  while(ros::ok()) {
    std_msgs::String msg;
    std::stringstream ss;
    ss << "hello world " << count;
    msg.data = ss.str();
    ROS_INFO("%s", msg.data.c_str());
    chatter_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
    ++count;
  }
}
*/




class Manager   {
    ros::Publisher switch_pub;
  
  
    public:   
        bool manageClients(trigger_messages::MessageServer::Request &req, trigger_messages::MessageServer::Response &res) {
            printf("MANAGING CLIENTS\n");
            if(req.switch_on)	{   //entrata del client nell'area Beacon
                counter_entry++;
                map_clients[req.device_name] = counter_entry;
                ROS_INFO("Client Added - [%s]: %d", req.device_name.c_str(), map_clients[req.device_name]);
                res.feedback = true;
            } else    {   //uscita del client dall'area Beacon
                if(map_clients.size() > 0 && map_clients[req.device_name])    { //map_clients.size() > 0 necessaria altrimenti la condizione successiva alloca nuova memoria
                    map_clients.erase(req.device_name);
	                ROS_INFO("Client Deleted! - %s", req.device_name.c_str());
	            }
	            res.feedback = false;
            }
            printf("[DEBUG] map_clients.size = %d\n", map_clients.size());
                if(map_clients.size() > 0 && !lamp)    {  //se è entrato il primo client nell'area Beacon, accendo la lampada
                    lamp = switchLamp(true);
                    printf("[SERVER] LAMP: %d\n", lamp);
                } else if (map_clients.size() == 0 && lamp)   {   //se non ci sono più client nell'area Beacon, spengo la lampada 
                    lamp = switchLamp(false);
                    printf("[SERVER] LAMP: %d\n", lamp);
                }
              
              ROS_INFO("Sending back response: [%d]", res.feedback);
              return true;
        }
    
    public:
        bool switchLamp(bool to_turn_on)    {
            std_msgs::String msg;
            std::stringstream ss;
            ss << to_turn_on;
            msg.data = ss.str();
            ROS_INFO("%s", msg.data.c_str());
            switch_pub.publish(msg);
            ros::spinOnce();
            
            if(to_turn_on)  {
                ROS_INFO("[SWITCH] The lamp is going ON!");
            } else  {
                ROS_INFO("[SWITCH] The lamp is going OFF!");
            }
            return to_turn_on;
        }
    
    
    public:
        void startPublisher(ros::NodeHandle n_topic)   {
            switch_pub = n_topic.advertise<std_msgs::String>("switcher", 1000);
        }
};





int main(int argc, char **argv) {
    printf("START\n");
    ros::init(argc, argv, "message_server");
  
    ros::NodeHandle n_server_client, n_topic;
  
    Manager manage_server;
    manage_server.startPublisher(n_topic);

    ros::ServiceServer service = n_server_client.advertiseService("message_service", &Manager::manageClients, &manage_server);

    ROS_INFO("Ready to recieve the clients");
    ros::spin();

    return 0;
}
