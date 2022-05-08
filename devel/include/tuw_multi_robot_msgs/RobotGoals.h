// Generated by gencpp from file tuw_multi_robot_msgs/RobotGoals.msg
// DO NOT EDIT!


#ifndef TUW_MULTI_ROBOT_MSGS_MESSAGE_ROBOTGOALS_H
#define TUW_MULTI_ROBOT_MSGS_MESSAGE_ROBOTGOALS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace tuw_multi_robot_msgs
{
template <class ContainerAllocator>
struct RobotGoals_
{
  typedef RobotGoals_<ContainerAllocator> Type;

  RobotGoals_()
    : robot_name()
    , destinations()  {
    }
  RobotGoals_(const ContainerAllocator& _alloc)
    : robot_name(_alloc)
    , destinations(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robot_name_type;
  _robot_name_type robot_name;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose_<ContainerAllocator> >::other >  _destinations_type;
  _destinations_type destinations;





  typedef boost::shared_ptr< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> const> ConstPtr;

}; // struct RobotGoals_

typedef ::tuw_multi_robot_msgs::RobotGoals_<std::allocator<void> > RobotGoals;

typedef boost::shared_ptr< ::tuw_multi_robot_msgs::RobotGoals > RobotGoalsPtr;
typedef boost::shared_ptr< ::tuw_multi_robot_msgs::RobotGoals const> RobotGoalsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator1> & lhs, const ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator2> & rhs)
{
  return lhs.robot_name == rhs.robot_name &&
    lhs.destinations == rhs.destinations;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator1> & lhs, const ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tuw_multi_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b8f37aa499812d58bbe5ed4a6053d837";
  }

  static const char* value(const ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb8f37aa499812d58ULL;
  static const uint64_t static_value2 = 0xbbe5ed4a6053d837ULL;
};

template<class ContainerAllocator>
struct DataType< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tuw_multi_robot_msgs/RobotGoals";
  }

  static const char* value(const ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#################################################################\n"
"## used to describe a set of destinations for a robot\n"
"## robot_name is used as id and often used as namespace for topics\n"
"#################################################################\n"
"\n"
"string robot_name                   # the name of the robot\n"
"geometry_msgs/Pose[] destinations   # Describes a set of destinations, where the last one is the final goal of the trip\n"
"                                    # if there are more than one destinations the first one is the start pose\n"
"                                    # else the current pose of the robot is used as start\n"
" \n"
" \n"
"\n"
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

  static const char* value(const ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_name);
      stream.next(m.destinations);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotGoals_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tuw_multi_robot_msgs::RobotGoals_<ContainerAllocator>& v)
  {
    s << indent << "robot_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot_name);
    s << indent << "destinations[]" << std::endl;
    for (size_t i = 0; i < v.destinations.size(); ++i)
    {
      s << indent << "  destinations[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.destinations[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUW_MULTI_ROBOT_MSGS_MESSAGE_ROBOTGOALS_H
