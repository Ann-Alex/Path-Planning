// Auto-generated. Do not edit!

// (in-package tuw_nav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RouteSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.orientation = null;
      this.motion_type = null;
      this.start = null;
      this.end = null;
      this.center = null;
      this.level = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = 0;
      }
      if (initObj.hasOwnProperty('motion_type')) {
        this.motion_type = initObj.motion_type
      }
      else {
        this.motion_type = 0;
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouteSegment
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = _serializer.uint8(obj.orientation, buffer, bufferOffset);
    // Serialize message field [motion_type]
    bufferOffset = _serializer.uint8(obj.motion_type, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.end, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.int8(obj.level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouteSegment
    let len;
    let data = new RouteSegment(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motion_type]
    data.motion_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 176;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_nav_msgs/RouteSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26469c8984f3cdfc24371244c703f828';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 id                     # Segment id
    uint8 type                    # Segment type
                                  # NA      = 0
                                  # LINE    = 1
                                  # ARC     = 2
                                  # SPIROS  = 3
                                  # SPLINE  = 4
    uint8 orientation             # Segment orientation
                                  # CLOCKWISE  = 0
                                  # COUNTER_CLOCKWISE  = 1
    uint8 motion_type             # Motion type
                                  # NA = 0
                                  # FLAT = 1
                                  # DWA_SLOW = 2
                                  # DWA_FAST = 3
                                  # MPC_SLOW = 4
                                  # MPC_FAST = 5
                                  # PI_SLOW = 6
                                  # PI_FAST = 7
    geometry_msgs/Pose start
    geometry_msgs/Pose end
    geometry_msgs/Pose center    
    int8 level
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RouteSegment(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = 0
    }

    if (msg.motion_type !== undefined) {
      resolved.motion_type = msg.motion_type;
    }
    else {
      resolved.motion_type = 0
    }

    if (msg.start !== undefined) {
      resolved.start = geometry_msgs.msg.Pose.Resolve(msg.start)
    }
    else {
      resolved.start = new geometry_msgs.msg.Pose()
    }

    if (msg.end !== undefined) {
      resolved.end = geometry_msgs.msg.Pose.Resolve(msg.end)
    }
    else {
      resolved.end = new geometry_msgs.msg.Pose()
    }

    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Pose.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Pose()
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0
    }

    return resolved;
    }
};

module.exports = RouteSegment;
