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

//-----------------------------------------------------------

class ObjectWithCovariance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object = null;
      this.covariance_pose = null;
      this.covariance_twist = null;
      this.correlation = null;
    }
    else {
      if (initObj.hasOwnProperty('object')) {
        this.object = initObj.object
      }
      else {
        this.object = new Object();
      }
      if (initObj.hasOwnProperty('covariance_pose')) {
        this.covariance_pose = initObj.covariance_pose
      }
      else {
        this.covariance_pose = [];
      }
      if (initObj.hasOwnProperty('covariance_twist')) {
        this.covariance_twist = initObj.covariance_twist
      }
      else {
        this.covariance_twist = [];
      }
      if (initObj.hasOwnProperty('correlation')) {
        this.correlation = initObj.correlation
      }
      else {
        this.correlation = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectWithCovariance
    // Serialize message field [object]
    bufferOffset = Object.serialize(obj.object, buffer, bufferOffset);
    // Serialize message field [covariance_pose]
    bufferOffset = _arraySerializer.float64(obj.covariance_pose, buffer, bufferOffset, null);
    // Serialize message field [covariance_twist]
    bufferOffset = _arraySerializer.float64(obj.covariance_twist, buffer, bufferOffset, null);
    // Serialize message field [correlation]
    bufferOffset = _arraySerializer.float64(obj.correlation, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectWithCovariance
    let len;
    let data = new ObjectWithCovariance(null);
    // Deserialize message field [object]
    data.object = Object.deserialize(buffer, bufferOffset);
    // Deserialize message field [covariance_pose]
    data.covariance_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [covariance_twist]
    data.covariance_twist = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [correlation]
    data.correlation = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Object.getMessageSize(object.object);
    length += 8 * object.covariance_pose.length;
    length += 8 * object.covariance_twist.length;
    length += 8 * object.correlation.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_object_msgs/ObjectWithCovariance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f5bff1206fce53cd48a87798c13655f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ObjectWithCovariance(null);
    if (msg.object !== undefined) {
      resolved.object = Object.Resolve(msg.object)
    }
    else {
      resolved.object = new Object()
    }

    if (msg.covariance_pose !== undefined) {
      resolved.covariance_pose = msg.covariance_pose;
    }
    else {
      resolved.covariance_pose = []
    }

    if (msg.covariance_twist !== undefined) {
      resolved.covariance_twist = msg.covariance_twist;
    }
    else {
      resolved.covariance_twist = []
    }

    if (msg.correlation !== undefined) {
      resolved.correlation = msg.correlation;
    }
    else {
      resolved.correlation = []
    }

    return resolved;
    }
};

module.exports = ObjectWithCovariance;
