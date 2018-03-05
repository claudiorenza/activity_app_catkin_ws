// Generated by gencpp from file trigger_messages/MessageServerStarterResponse.msg
// DO NOT EDIT!


#ifndef TRIGGER_MESSAGES_MESSAGE_MESSAGESERVERSTARTERRESPONSE_H
#define TRIGGER_MESSAGES_MESSAGE_MESSAGESERVERSTARTERRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace trigger_messages
{
template <class ContainerAllocator>
struct MessageServerStarterResponse_
{
  typedef MessageServerStarterResponse_<ContainerAllocator> Type;

  MessageServerStarterResponse_()
    : feedback(false)  {
    }
  MessageServerStarterResponse_(const ContainerAllocator& _alloc)
    : feedback(false)  {
  (void)_alloc;
    }



   typedef uint8_t _feedback_type;
  _feedback_type feedback;




  typedef boost::shared_ptr< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MessageServerStarterResponse_

typedef ::trigger_messages::MessageServerStarterResponse_<std::allocator<void> > MessageServerStarterResponse;

typedef boost::shared_ptr< ::trigger_messages::MessageServerStarterResponse > MessageServerStarterResponsePtr;
typedef boost::shared_ptr< ::trigger_messages::MessageServerStarterResponse const> MessageServerStarterResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace trigger_messages

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f1f168a39479bedb24dba7a087426182";
  }

  static const char* value(const ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf1f168a39479bedbULL;
  static const uint64_t static_value2 = 0x24dba7a087426182ULL;
};

template<class ContainerAllocator>
struct DataType< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "trigger_messages/MessageServerStarterResponse";
  }

  static const char* value(const ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool feedback\n\
\n\
";
  }

  static const char* value(const ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MessageServerStarterResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::trigger_messages::MessageServerStarterResponse_<ContainerAllocator>& v)
  {
    s << indent << "feedback: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRIGGER_MESSAGES_MESSAGE_MESSAGESERVERSTARTERRESPONSE_H
