// Auto-generated. Do not edit!

// (in-package tuw_object_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectWithCovarianceArray = require('./ObjectWithCovarianceArray.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObjectWithCovarianceArrayArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objects_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objects_array')) {
        this.objects_array = initObj.objects_array
      }
      else {
        this.objects_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectWithCovarianceArrayArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objects_array]
    // Serialize the length for message field [objects_array]
    bufferOffset = _serializer.uint32(obj.objects_array.length, buffer, bufferOffset);
    obj.objects_array.forEach((val) => {
      bufferOffset = ObjectWithCovarianceArray.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectWithCovarianceArrayArray
    let len;
    let data = new ObjectWithCovarianceArrayArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objects_array]
    // Deserialize array length for message field [objects_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects_array[i] = ObjectWithCovarianceArray.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.objects_array.forEach((val) => {
      length += ObjectWithCovarianceArray.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_object_msgs/ObjectWithCovarianceArrayArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd39ee51d9b4b69d4a984a8320f91efa8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # An object with covariance in a reference coordinate frame with timestamp
    Header header
    ObjectWithCovarianceArray[] objects_array
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: tuw_object_msgs/ObjectWithCovarianceArray
    # An object with covariance in a reference coordinate frame with timestamp
    Header header
    ObjectWithCovariance[] objects
    
    ================================================================================
    MSG: tuw_object_msgs/ObjectWithCovariance
    # This expresses a object in free space with uncertainty.
    
    Object object
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    
    float64[] covariance_pose   # pose covariance if it exists it will be 3x3 or 6x6
    float64[] covariance_twist  # twist covariance if it exists it will be 3x3 or 6x6
    float64[] correlation       # correlation between pose and twist if it exists it will be 3x3 or 6x6
    ================================================================================
    MSG: tuw_object_msgs/Object
    # This expresses a object in a 3D space
    int32[] ids                  # possible ids of the detected object (empty if no id could be identified/assigned)
    int32   shape                # shape type (possible types are listed below)
    float64[] shape_variables    # variables correspoding to the shape of the object (possible types are listed below)
    float64[] ids_confidence     # confidence of the possible ids in [0, 1]
    geometry_msgs/Pose pose      # pose of the detected object
    geometry_msgs/Twist twist    # twist of the detected object
    
    # SHAPE_TYPE                      # SHAPE_VARIABLES
    # ====================================================
    int32 SHAPE_UNKOWN           = 0  # []
    int32 SHAPE_POINT            = 1  # []
    int32 SHAPE_CIRCLE           = 2  # [radius]
    int32 SHAPE_ELLIPSE          = 3  # [radius1, radius2]
    int32 SHAPE_SQUARE           = 4  # [width]
    int32 SHAPE_RECTANGLE        = 5  # [length, width]
    int32 SHAPE_HULL             = 6  # [p0, p1, p2, ...]
    int32 SHAPE_LINE             = 7  # [] or [length] 
    
    int32 SHAPE_SPHERE           = 102
    int32 SHAPE_ELLIPSOID        = 103
    int32 SHAPE_CUBE             = 104
    int32 SHAPE_BOX              = 105
    int32 SHAPE_MESH             = 106
    
    int32 SHAPE_TRAFFIC_CONE     = 201 # [radius, color(1 = blue, 2 = yellow, 3 = red)] 
    int32 SHAPE_DOOR             = 202 # [width, height, opening angle (0=closed), nr of door leafs, clockwise (0) counterclockwise (1)]
    int32 SHAPE_MAP_DOOR         = 212 # for doors already mapped, same parameters as usual door
    int32 SHAPE_PERSON           = 203
    int32 SHAPE_VEHICLE          = 204
    int32 SHAPE_FIDUCIAL         = 205
    int32 SHAPE_CONE             = 206 # [radius, height]
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectWithCovarianceArrayArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.objects_array !== undefined) {
      resolved.objects_array = new Array(msg.objects_array.length);
      for (let i = 0; i < resolved.objects_array.length; ++i) {
        resolved.objects_array[i] = ObjectWithCovarianceArray.Resolve(msg.objects_array[i]);
      }
    }
    else {
      resolved.objects_array = []
    }

    return resolved;
    }
};

module.exports = ObjectWithCovarianceArrayArray;
