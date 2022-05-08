// Generated by gencpp from file tuw_geometry_msgs/WeightedPoseWithCovariance.msg
// DO NOT EDIT!


#ifndef TUW_GEOMETRY_MSGS_MESSAGE_WEIGHTEDPOSEWITHCOVARIANCE_H
#define TUW_GEOMETRY_MSGS_MESSAGE_WEIGHTEDPOSEWITHCOVARIANCE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace tuw_geometry_msgs
{
template <class ContainerAllocator>
struct WeightedPoseWithCovariance_
{
  typedef WeightedPoseWithCovariance_<ContainerAllocator> Type;

  WeightedPoseWithCovariance_()
    : pose()
    , covariance()
    , weight(0.0)  {
      covariance.assign(0.0);
  }
  WeightedPoseWithCovariance_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , covariance()
    , weight(0.0)  {
  (void)_alloc;
      covariance.assign(0.0);
  }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef boost::array<double, 36>  _covariance_type;
  _covariance_type covariance;

   typedef double _weight_type;
  _weight_type weight;





  typedef boost::shared_ptr< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> const> ConstPtr;

}; // struct WeightedPoseWithCovariance_

typedef ::tuw_geometry_msgs::WeightedPoseWithCovariance_<std::allocator<void> > WeightedPoseWithCovariance;

typedef boost::shared_ptr< ::tuw_geometry_msgs::WeightedPoseWithCovariance > WeightedPoseWithCovariancePtr;
typedef boost::shared_ptr< ::tuw_geometry_msgs::WeightedPoseWithCovariance const> WeightedPoseWithCovarianceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator1> & lhs, const ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose &&
    lhs.covariance == rhs.covariance &&
    lhs.weight == rhs.weight;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator1> & lhs, const ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tuw_geometry_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "48c0d78e262fa72b14e49d79a40893ba";
  }

  static const char* value(const ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x48c0d78e262fa72bULL;
  static const uint64_t static_value2 = 0x14e49d79a40893baULL;
};

template<class ContainerAllocator>
struct DataType< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tuw_geometry_msgs/WeightedPoseWithCovariance";
  }

  static const char* value(const ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This represents a pose in free space with uncertainty and a scoring weight.\n"
"\n"
"geometry_msgs/Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"# [0, 1] weight of the pose, used for scoring a pose particle\n"
"float64 weight\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.covariance);
      stream.next(m.weight);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WeightedPoseWithCovariance_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tuw_geometry_msgs::WeightedPoseWithCovariance_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "covariance[]" << std::endl;
    for (size_t i = 0; i < v.covariance.size(); ++i)
    {
      s << indent << "  covariance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.covariance[i]);
    }
    s << indent << "weight: ";
    Printer<double>::stream(s, indent + "  ", v.weight);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUW_GEOMETRY_MSGS_MESSAGE_WEIGHTEDPOSEWITHCOVARIANCE_H
