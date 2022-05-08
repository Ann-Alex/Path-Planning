// Generated by gencpp from file tuw_local_controller_msgs/ExecutePathGoal.msg
// DO NOT EDIT!


#ifndef TUW_LOCAL_CONTROLLER_MSGS_MESSAGE_EXECUTEPATHGOAL_H
#define TUW_LOCAL_CONTROLLER_MSGS_MESSAGE_EXECUTEPATHGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/Path.h>

namespace tuw_local_controller_msgs
{
template <class ContainerAllocator>
struct ExecutePathGoal_
{
  typedef ExecutePathGoal_<ContainerAllocator> Type;

  ExecutePathGoal_()
    : path()  {
    }
  ExecutePathGoal_(const ContainerAllocator& _alloc)
    : path(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::Path_<ContainerAllocator>  _path_type;
  _path_type path;





  typedef boost::shared_ptr< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ExecutePathGoal_

typedef ::tuw_local_controller_msgs::ExecutePathGoal_<std::allocator<void> > ExecutePathGoal;

typedef boost::shared_ptr< ::tuw_local_controller_msgs::ExecutePathGoal > ExecutePathGoalPtr;
typedef boost::shared_ptr< ::tuw_local_controller_msgs::ExecutePathGoal const> ExecutePathGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator1> & lhs, const ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator2> & rhs)
{
  return lhs.path == rhs.path;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator1> & lhs, const ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tuw_local_controller_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "58d6f138c7de7ef47c75d4b7e5df5472";
  }

  static const char* value(const ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x58d6f138c7de7ef4ULL;
  static const uint64_t static_value2 = 0x7c75d4b7e5df5472ULL;
};

template<class ContainerAllocator>
struct DataType< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tuw_local_controller_msgs/ExecutePathGoal";
  }

  static const char* value(const ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"nav_msgs/Path path\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Path\n"
"#An array of poses that represents a Path for a robot to follow\n"
"Header header\n"
"geometry_msgs/PoseStamped[] poses\n"
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
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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

  static const char* value(const ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExecutePathGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tuw_local_controller_msgs::ExecutePathGoal_<ContainerAllocator>& v)
  {
    s << indent << "path: ";
    s << std::endl;
    Printer< ::nav_msgs::Path_<ContainerAllocator> >::stream(s, indent + "  ", v.path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUW_LOCAL_CONTROLLER_MSGS_MESSAGE_EXECUTEPATHGOAL_H
