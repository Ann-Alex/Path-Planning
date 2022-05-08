// Auto-generated. Do not edit!

// (in-package tuw_object_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ids = null;
      this.shape = null;
      this.shape_variables = null;
      this.ids_confidence = null;
      this.pose = null;
      this.twist = null;
    }
    else {
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = 0;
      }
      if (initObj.hasOwnProperty('shape_variables')) {
        this.shape_variables = initObj.shape_variables
      }
      else {
        this.shape_variables = [];
      }
      if (initObj.hasOwnProperty('ids_confidence')) {
        this.ids_confidence = initObj.ids_confidence
      }
      else {
        this.ids_confidence = [];
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.int32(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [shape]
    bufferOffset = _serializer.int32(obj.shape, buffer, bufferOffset);
    // Serialize message field [shape_variables]
    bufferOffset = _arraySerializer.float64(obj.shape_variables, buffer, bufferOffset, null);
    // Serialize message field [ids_confidence]
    bufferOffset = _arraySerializer.float64(obj.ids_confidence, buffer, bufferOffset, null);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [shape]
    data.shape = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shape_variables]
    data.shape_variables = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ids_confidence]
    data.ids_confidence = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.ids.length;
    length += 8 * object.shape_variables.length;
    length += 8 * object.ids_confidence.length;
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_object_msgs/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5044ab142c144bddb9b438207ccdb786';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Object(null);
    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = 0
    }

    if (msg.shape_variables !== undefined) {
      resolved.shape_variables = msg.shape_variables;
    }
    else {
      resolved.shape_variables = []
    }

    if (msg.ids_confidence !== undefined) {
      resolved.ids_confidence = msg.ids_confidence;
    }
    else {
      resolved.ids_confidence = []
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.Twist.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

// Constants for message
Object.Constants = {
  SHAPE_UNKOWN: 0,
  SHAPE_POINT: 1,
  SHAPE_CIRCLE: 2,
  SHAPE_ELLIPSE: 3,
  SHAPE_SQUARE: 4,
  SHAPE_RECTANGLE: 5,
  SHAPE_HULL: 6,
  SHAPE_LINE: 7,
  SHAPE_SPHERE: 102,
  SHAPE_ELLIPSOID: 103,
  SHAPE_CUBE: 104,
  SHAPE_BOX: 105,
  SHAPE_MESH: 106,
  SHAPE_TRAFFIC_CONE: 201,
  SHAPE_DOOR: 202,
  SHAPE_MAP_DOOR: 212,
  SHAPE_PERSON: 203,
  SHAPE_VEHICLE: 204,
  SHAPE_FIDUCIAL: 205,
  SHAPE_CONE: 206,
}

module.exports = Object;
