// Auto-generated. Do not edit!

// (in-package tuw_object_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Object = require('./Object.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObjectStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.object = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('object')) {
        this.object = initObj.object
      }
      else {
        this.object = new Object();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [object]
    bufferOffset = Object.serialize(obj.object, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectStamped
    let len;
    let data = new ObjectStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [object]
    data.object = Object.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Object.getMessageSize(object.object);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_object_msgs/ObjectStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25761cd9a6aaa53a9db84e0e1ca5efe2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # An object with reference coordinate frame and timestamp
    Header header
    Object object
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
    const resolved = new ObjectStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.object !== undefined) {
      resolved.object = Object.Resolve(msg.object)
    }
    else {
      resolved.object = new Object()
    }

    return resolved;
    }
};

module.exports = ObjectStamped;
