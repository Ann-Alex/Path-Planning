// Generated by gencpp from file tuw_multi_robot_msgs/StationManagerStationProtocolResponse.msg
// DO NOT EDIT!


#ifndef TUW_MULTI_ROBOT_MSGS_MESSAGE_STATIONMANAGERSTATIONPROTOCOLRESPONSE_H
#define TUW_MULTI_ROBOT_MSGS_MESSAGE_STATIONMANAGERSTATIONPROTOCOLRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tuw_multi_robot_msgs
{
template <class ContainerAllocator>
struct StationManagerStationProtocolResponse_
{
  typedef StationManagerStationProtocolResponse_<ContainerAllocator> Type;

  StationManagerStationProtocolResponse_()
    : response()  {
    }
  StationManagerStationProtocolResponse_(const ContainerAllocator& _alloc)
    : response(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _response_type;
  _response_type response;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(EXECUTED)
  #undef EXECUTED
#endif
#if defined(_WIN32) && defined(FAILED)
  #undef FAILED
#endif
#if defined(_WIN32) && defined(ERROR)
  #undef ERROR
#endif


  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  EXECUTED;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  FAILED;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  ERROR;

  typedef boost::shared_ptr< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StationManagerStationProtocolResponse_

typedef ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<std::allocator<void> > StationManagerStationProtocolResponse;

typedef boost::shared_ptr< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse > StationManagerStationProtocolResponsePtr;
typedef boost::shared_ptr< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse const> StationManagerStationProtocolResponseConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      StationManagerStationProtocolResponse_<ContainerAllocator>::EXECUTED =
        
          "executed                      # response if the request could be executed successful"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      StationManagerStationProtocolResponse_<ContainerAllocator>::FAILED =
        
          "failed                          # response if the request could not be executed successful"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      StationManagerStationProtocolResponse_<ContainerAllocator>::ERROR =
        
          "error                            # response if the request is unknown"
        
        ;
   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator1> & lhs, const ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator2> & rhs)
{
  return lhs.response == rhs.response;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator1> & lhs, const ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tuw_multi_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "489f190c203b039f852a57035560eed4";
  }

  static const char* value(const ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x489f190c203b039fULL;
  static const uint64_t static_value2 = 0x852a57035560eed4ULL;
};

template<class ContainerAllocator>
struct DataType< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tuw_multi_robot_msgs/StationManagerStationProtocolResponse";
  }

  static const char* value(const ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"string                          response        # response string\n"
"\n"
"# response constants\n"
"string EXECUTED = executed                      # response if the request could be executed successful\n"
"string FAILED = failed                          # response if the request could not be executed successful\n"
"string ERROR = error                            # response if the request is unknown\n"
;
  }

  static const char* value(const ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.response);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StationManagerStationProtocolResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tuw_multi_robot_msgs::StationManagerStationProtocolResponse_<ContainerAllocator>& v)
  {
    s << indent << "response: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.response);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUW_MULTI_ROBOT_MSGS_MESSAGE_STATIONMANAGERSTATIONPROTOCOLRESPONSE_H
