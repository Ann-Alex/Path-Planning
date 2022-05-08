// Generated by gencpp from file tuw_object_msgs/ObjectWithCovarianceStamped.msg
// DO NOT EDIT!


#ifndef TUW_OBJECT_MSGS_MESSAGE_OBJECTWITHCOVARIANCESTAMPED_H
#define TUW_OBJECT_MSGS_MESSAGE_OBJECTWITHCOVARIANCESTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <tuw_object_msgs/ObjectWithCovariance.h>

namespace tuw_object_msgs
{
template <class ContainerAllocator>
struct ObjectWithCovarianceStamped_
{
  typedef ObjectWithCovarianceStamped_<ContainerAllocator> Type;

  ObjectWithCovarianceStamped_()
    : header()
    , object()  {
    }
  ObjectWithCovarianceStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , object(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::tuw_object_msgs::ObjectWithCovariance_<ContainerAllocator>  _object_type;
  _object_type object;





  typedef boost::shared_ptr< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> const> ConstPtr;

}; // struct ObjectWithCovarianceStamped_

typedef ::tuw_object_msgs::ObjectWithCovarianceStamped_<std::allocator<void> > ObjectWithCovarianceStamped;

typedef boost::shared_ptr< ::tuw_object_msgs::ObjectWithCovarianceStamped > ObjectWithCovarianceStampedPtr;
typedef boost::shared_ptr< ::tuw_object_msgs::ObjectWithCovarianceStamped const> ObjectWithCovarianceStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator1> & lhs, const ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.object == rhs.object;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator1> & lhs, const ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tuw_object_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "275c26f1a9ad49ddf779682fc45edf69";
  }

  static const char* value(const ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x275c26f1a9ad49ddULL;
  static const uint64_t static_value2 = 0xf779682fc45edf69ULL;
};

template<class ContainerAllocator>
struct DataType< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tuw_object_msgs/ObjectWithCovarianceStamped";
  }

  static const char* value(const ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# An object with covariance in a reference coordinate frame with timestamp\n"
"Header header\n"
"ObjectWithCovariance object\n"
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
"MSG: tuw_object_msgs/ObjectWithCovariance\n"
"# This expresses a object in free space with uncertainty.\n"
"\n"
"Object object\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"\n"
"float64[] covariance_pose   # pose covariance if it exists it will be 3x3 or 6x6\n"
"float64[] covariance_twist  # twist covariance if it exists it will be 3x3 or 6x6\n"
"float64[] correlation       # correlation between pose and twist if it exists it will be 3x3 or 6x6\n"
"================================================================================\n"
"MSG: tuw_object_msgs/Object\n"
"# This expresses a object in a 3D space\n"
"int32[] ids                  # possible ids of the detected object (empty if no id could be identified/assigned)\n"
"int32   shape                # shape type (possible types are listed below)\n"
"float64[] shape_variables    # variables correspoding to the shape of the object (possible types are listed below)\n"
"float64[] ids_confidence     # confidence of the possible ids in [0, 1]\n"
"geometry_msgs/Pose pose      # pose of the detected object\n"
"geometry_msgs/Twist twist    # twist of the detected object\n"
"\n"
"# SHAPE_TYPE                      # SHAPE_VARIABLES\n"
"# ====================================================\n"
"int32 SHAPE_UNKOWN           = 0  # []\n"
"int32 SHAPE_POINT            = 1  # []\n"
"int32 SHAPE_CIRCLE           = 2  # [radius]\n"
"int32 SHAPE_ELLIPSE          = 3  # [radius1, radius2]\n"
"int32 SHAPE_SQUARE           = 4  # [width]\n"
"int32 SHAPE_RECTANGLE        = 5  # [length, width]\n"
"int32 SHAPE_HULL             = 6  # [p0, p1, p2, ...]\n"
"int32 SHAPE_LINE             = 7  # [] or [length] \n"
"\n"
"int32 SHAPE_SPHERE           = 102\n"
"int32 SHAPE_ELLIPSOID        = 103\n"
"int32 SHAPE_CUBE             = 104\n"
"int32 SHAPE_BOX              = 105\n"
"int32 SHAPE_MESH             = 106\n"
"\n"
"int32 SHAPE_TRAFFIC_CONE     = 201 # [radius, color(1 = blue, 2 = yellow, 3 = red)] \n"
"int32 SHAPE_DOOR             = 202 # [width, height, opening angle (0=closed), nr of door leafs, clockwise (0) counterclockwise (1)]\n"
"int32 SHAPE_MAP_DOOR         = 212 # for doors already mapped, same parameters as usual door\n"
"int32 SHAPE_PERSON           = 203\n"
"int32 SHAPE_VEHICLE          = 204\n"
"int32 SHAPE_FIDUCIAL         = 205\n"
"int32 SHAPE_CONE             = 206 # [radius, height]\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.object);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjectWithCovarianceStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tuw_object_msgs::ObjectWithCovarianceStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "object: ";
    s << std::endl;
    Printer< ::tuw_object_msgs::ObjectWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.object);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUW_OBJECT_MSGS_MESSAGE_OBJECTWITHCOVARIANCESTAMPED_H
