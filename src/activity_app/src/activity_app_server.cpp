#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <map>

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <netdb.h> 

int counter_entry = 0;
bool lamp = false;


bool switchLamp(bool to_turn_on)    {
    int sockfd, portno, n;

    struct sockaddr_in serv_addr;
    struct hostent *server;

    char buffer[256];
    
    portno = 23;
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) 
        perror("ERROR opening socket");
    server = gethostbyname("192.168.1.5");
    if (server == NULL) {
        fprintf(stderr,"ERROR, no such host\n");
        exit(0);
    }
    bzero((char *) &serv_addr, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    bcopy((char *)server->h_addr, 
         (char *)&serv_addr.sin_addr.s_addr,
         server->h_length);
    serv_addr.sin_port = htons(portno);
    if (connect(sockfd,(struct sockaddr *)&serv_addr,sizeof(serv_addr)) < 0) 
        perror("ERROR connecting");
    
    
    
    
    if(to_turn_on)  {
        n = write(sockfd,"1",1);
        ROS_INFO("[SWITCH] The lamp is going ON!");
    } else  {
        n = write(sockfd,"0",1);
        ROS_INFO("[SWITCH] The lamp is going OFF!");
    }
    if (n < 0) 
         perror("ERROR writing to socket");
    bzero(buffer,256);
    
    n = read(sockfd,buffer,255);
    if (n < 0) 
         perror("ERROR reading from socket");
    printf("%s\n",buffer);
    
    n = close(sockfd);
    
    return to_turn_on;
}

void deviceCallback(const std_msgs::String::ConstPtr& msg) {
  if(msg->data.c_str()[0] == '1')	{   //entrata del client nell'area Beacon
      ROS_INFO("Device Entered\n");
      counter_entry++;
  } else    {   //uscita del client dall'area Beacon
      ROS_INFO("Device Exited\n");
      counter_entry--; 
  }
  printf("[DEBUG] counter_entry = %d\n", counter_entry);
  if(counter_entry > 0 && !lamp)    {  //se è entrato il primo client nell'area Beacon, accendo la lampada
      printf("[SERVER] LAMP: %d\n", lamp = switchLamp(true));
  } else if (counter_entry == 0 && lamp)   {   //se non ci sono più client nell'area Beacon, spengo la lampada 
      printf("[SERVER] LAMP: %d\n", lamp = switchLamp(false));
  }
}


int main(int argc, char **argv) {  
  ros::init(argc, argv, "listener");

  ros::NodeHandle n;

  
  ros::Subscriber sub = n.subscribe("recogniser", 1000, deviceCallback);

  ROS_INFO("[SERVER] Ready to receive clients");
  ros::spin();

  return 0;
}
