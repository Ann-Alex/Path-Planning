// Generated by gencpp from file tuw_vehicle_msgs/CmdMpcVecVphi.msg
// DO NOT EDIT!


#ifndef TUW_VEHICLE_MSGS_MESSAGE_CMDMPCVECVPHI_H
#define TUW_VEHICLE_MSGS_MESSAGE_CMDMPCVECVPHI_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace tuw_vehicle_msgs
{
template <class ContainerAllocator>
struct CmdMpcVecVphi_
{
  typedef CmdMpcVecVphi_<ContainerAllocator> Type;

  CmdMpcVecVphi_()
    : header()
    , v()
    , p()
    , d_tv()
    , d_tp()
    , state0()  {
    }
  CmdMpcVecVphi_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , v(_alloc)
    , p(_alloc)
    , d_tv(_alloc)
    , d_tp(_alloc)
    , state0(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _v_type;
  _v_type v;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _p_type;
  _p_type p;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _d_tv_type;
  _d_tv_type d_tv;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _d_tp_type;
  _d_tp_type d_tp;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _state0_type;
  _state0_type state0;





  typedef boost::shared_ptr< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> const> ConstPtr;

}; // struct CmdMpcVecVphi_

typedef ::tuw_vehicle_msgs::CmdMpcVecVphi_<std::allocator<void> > CmdMpcVecVphi;

typedef boost::shared_ptr< ::tuw_vehicle_msgs::CmdMpcVecVphi > CmdMpcVecVphiPtr;
typedef boost::shared_ptr< ::tuw_vehicle_msgs::CmdMpcVecVphi const> CmdMpcVecVphiConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator1> & lhs, const ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.v == rhs.v &&
    lhs.p == rhs.p &&
    lhs.d_tv == rhs.d_tv &&
    lhs.d_tp == rhs.d_tp &&
    lhs.state0 == rhs.state0;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator1> & lhs, const ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tuw_vehicle_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> >
{
  static const char* value()
  {
    return "47cbbdeab2d846ecbac96b455035969a";
  }

  static const char* value(const ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x47cbbdeab2d846ecULL;
  static const uint64_t static_value2 = 0xbac96b455035969aULL;
};

template<class ContainerAllocator>
struct DataType< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tuw_vehicle_msgs/CmdMpcVecVphi";
  }

  static const char* value(const ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float64[] v\n"
"float64[] p\n"
"float64[] d_tv\n"
"float64[] d_tp\n"
"\n"
"float64[] state0\n"
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
;
  }

  static const char* value(const ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.v);
      stream.next(m.p);
      stream.next(m.d_tv);
      stream.next(m.d_tp);
      stream.next(m.state0);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CmdMpcVecVphi_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tuw_vehicle_msgs::CmdMpcVecVphi_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "v[]" << std::endl;
    for (size_t i = 0; i < v.v.size(); ++i)
    {
      s << indent << "  v[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.v[i]);
    }
    s << indent << "p[]" << std::endl;
    for (size_t i = 0; i < v.p.size(); ++i)
    {
      s << indent << "  p[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.p[i]);
    }
    s << indent << "d_tv[]" << std::endl;
    for (size_t i = 0; i < v.d_tv.size(); ++i)
    {
      s << indent << "  d_tv[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.d_tv[i]);
    }
    s << indent << "d_tp[]" << std::endl;
    for (size_t i = 0; i < v.d_tp.size(); ++i)
    {
      s << indent << "  d_tp[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.d_tp[i]);
    }
    s << indent << "state0[]" << std::endl;
    for (size_t i = 0; i < v.state0.size(); ++i)
    {
      s << indent << "  state0[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.state0[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUW_VEHICLE_MSGS_MESSAGE_CMDMPCVECVPHI_H
