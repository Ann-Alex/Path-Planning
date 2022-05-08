// Generated by gencpp from file tuw_nav_msgs/Spline.msg
// DO NOT EDIT!


#ifndef TUW_NAV_MSGS_MESSAGE_SPLINE_H
#define TUW_NAV_MSGS_MESSAGE_SPLINE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <tuw_nav_msgs/Float64Array.h>

namespace tuw_nav_msgs
{
template <class ContainerAllocator>
struct Spline_
{
  typedef Spline_<ContainerAllocator> Type;

  Spline_()
    : header()
    , knots()
    , ctrls()  {
    }
  Spline_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , knots(_alloc)
    , ctrls(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _knots_type;
  _knots_type knots;

   typedef std::vector< ::tuw_nav_msgs::Float64Array_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::tuw_nav_msgs::Float64Array_<ContainerAllocator> >::other >  _ctrls_type;
  _ctrls_type ctrls;





  typedef boost::shared_ptr< ::tuw_nav_msgs::Spline_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tuw_nav_msgs::Spline_<ContainerAllocator> const> ConstPtr;

}; // struct Spline_

typedef ::tuw_nav_msgs::Spline_<std::allocator<void> > Spline;

typedef boost::shared_ptr< ::tuw_nav_msgs::Spline > SplinePtr;
typedef boost::shared_ptr< ::tuw_nav_msgs::Spline const> SplineConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tuw_nav_msgs::Spline_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tuw_nav_msgs::Spline_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tuw_nav_msgs::Spline_<ContainerAllocator1> & lhs, const ::tuw_nav_msgs::Spline_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.knots == rhs.knots &&
    lhs.ctrls == rhs.ctrls;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tuw_nav_msgs::Spline_<ContainerAllocator1> & lhs, const ::tuw_nav_msgs::Spline_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tuw_nav_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tuw_nav_msgs::Spline_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tuw_nav_msgs::Spline_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_nav_msgs::Spline_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_nav_msgs::Spline_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_nav_msgs::Spline_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_nav_msgs::Spline_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tuw_nav_msgs::Spline_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5b00a6d2ce6d30ce3d71faff66791a89";
  }

  static const char* value(const ::tuw_nav_msgs::Spline_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5b00a6d2ce6d30ceULL;
  static const uint64_t static_value2 = 0x3d71faff66791a89ULL;
};

template<class ContainerAllocator>
struct DataType< ::tuw_nav_msgs::Spline_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tuw_nav_msgs/Spline";
  }

  static const char* value(const ::tuw_nav_msgs::Spline_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tuw_nav_msgs::Spline_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float64[] knots\n"
"Float64Array[] ctrls\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: tuw_nav_msgs/Float64Array\n"
"float64[] val\n"
;
  }

  static const char* value(const ::tuw_nav_msgs::Spline_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tuw_nav_msgs::Spline_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.knots);
      stream.next(m.ctrls);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Spline_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tuw_nav_msgs::Spline_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tuw_nav_msgs::Spline_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "knots[]" << std::endl;
    for (size_t i = 0; i < v.knots.size(); ++i)
    {
      s << indent << "  knots[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.knots[i]);
    }
    s << indent << "ctrls[]" << std::endl;
    for (size_t i = 0; i < v.ctrls.size(); ++i)
    {
      s << indent << "  ctrls[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::tuw_nav_msgs::Float64Array_<ContainerAllocator> >::stream(s, indent + "    ", v.ctrls[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUW_NAV_MSGS_MESSAGE_SPLINE_H
