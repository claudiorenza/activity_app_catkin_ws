// Generated by gencpp from file trigger_messages/MessageServer.msg
// DO NOT EDIT!


#ifndef TRIGGER_MESSAGES_MESSAGE_MESSAGESERVER_H
#define TRIGGER_MESSAGES_MESSAGE_MESSAGESERVER_H

#include <ros/service_traits.h>


#include <trigger_messages/MessageServerRequest.h>
#include <trigger_messages/MessageServerResponse.h>


namespace trigger_messages
{

struct MessageServer
{

typedef MessageServerRequest Request;
typedef MessageServerResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MessageServer
} // namespace trigger_messages


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::trigger_messages::MessageServer > {
  static const char* value()
  {
    return "3bc6de3448497ea3bff53c4a26a52c04";
  }

  static const char* value(const ::trigger_messages::MessageServer&) { return value(); }
};

template<>
struct DataType< ::trigger_messages::MessageServer > {
  static const char* value()
  {
    return "trigger_messages/MessageServer";
  }

  static const char* value(const ::trigger_messages::MessageServer&) { return value(); }
};


// service_traits::MD5Sum< ::trigger_messages::MessageServerRequest> should match 
// service_traits::MD5Sum< ::trigger_messages::MessageServer > 
template<>
struct MD5Sum< ::trigger_messages::MessageServerRequest>
{
  static const char* value()
  {
    return MD5Sum< ::trigger_messages::MessageServer >::value();
  }
  static const char* value(const ::trigger_messages::MessageServerRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::trigger_messages::MessageServerRequest> should match 
// service_traits::DataType< ::trigger_messages::MessageServer > 
template<>
struct DataType< ::trigger_messages::MessageServerRequest>
{
  static const char* value()
  {
    return DataType< ::trigger_messages::MessageServer >::value();
  }
  static const char* value(const ::trigger_messages::MessageServerRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::trigger_messages::MessageServerResponse> should match 
// service_traits::MD5Sum< ::trigger_messages::MessageServer > 
template<>
struct MD5Sum< ::trigger_messages::MessageServerResponse>
{
  static const char* value()
  {
    return MD5Sum< ::trigger_messages::MessageServer >::value();
  }
  static const char* value(const ::trigger_messages::MessageServerResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::trigger_messages::MessageServerResponse> should match 
// service_traits::DataType< ::trigger_messages::MessageServer > 
template<>
struct DataType< ::trigger_messages::MessageServerResponse>
{
  static const char* value()
  {
    return DataType< ::trigger_messages::MessageServer >::value();
  }
  static const char* value(const ::trigger_messages::MessageServerResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TRIGGER_MESSAGES_MESSAGE_MESSAGESERVER_H
