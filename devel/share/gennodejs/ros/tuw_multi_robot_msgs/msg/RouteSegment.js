// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoutePrecondition = require('./RoutePrecondition.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RouteSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.segment_id = null;
      this.preconditions = null;
      this.start = null;
      this.end = null;
      this.width = null;
    }
    else {
      if (initObj.hasOwnProperty('segment_id')) {
        this.segment_id = initObj.segment_id
      }
      else {
        this.segment_id = 0;
      }
      if (initObj.hasOwnProperty('preconditions')) {
        this.preconditions = initObj.preconditions
      }
      else {
        this.preconditions = [];
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
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouteSegment
    // Serialize message field [segment_id]
    bufferOffset = _serializer.int32(obj.segment_id, buffer, bufferOffset);
    // Serialize message field [preconditions]
    // Serialize the length for message field [preconditions]
    bufferOffset = _serializer.uint32(obj.preconditions.length, buffer, bufferOffset);
    obj.preconditions.forEach((val) => {
      bufferOffset = RoutePrecondition.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [start]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.end, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouteSegment
    let len;
    let data = new RouteSegment(null);
    // Deserialize message field [segment_id]
    data.segment_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [preconditions]
    // Deserialize array length for message field [preconditions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.preconditions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.preconditions[i] = RoutePrecondition.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [start]
    data.start = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.preconditions.forEach((val) => {
      length += RoutePrecondition.getMessageSize(val);
    });
    return length + 124;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/RouteSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3de3459e51270b121f6fd1fa4b97bc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## Describes a segment on a route with: start, end, width
    ## and preconditions for synchronisation to other robots
    #################################################################
    
    int32 segment_id                        # the unique identifier of a segment
    RoutePrecondition[] preconditions       # the preconditions, which have to be met before entering a segment
    geometry_msgs/Pose start                # startpoint of the segment
    geometry_msgs/Pose end                  # endpoint of the segment
    float32 width                           # width of the segment 
    
    ================================================================================
    MSG: tuw_multi_robot_msgs/RoutePrecondition
    #################################################################
    ## Route Preconditions are used to sync robots on a route
    ## e.g.: Each robot publishes its current step of its route 
    ## with such a message
    ## The specific segments of a route are marked with such 
    ## preconditions to block a robot from entering a segment
    ## until the sync message of the other robot has the right 
    ## route_segment_nr
    #################################################################
    
    string robot_id                  # the robot name for the precondition 
    int32 current_route_segment      # the segment nr of the route executed by the given robot
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
    if (msg.segment_id !== undefined) {
      resolved.segment_id = msg.segment_id;
    }
    else {
      resolved.segment_id = 0
    }

    if (msg.preconditions !== undefined) {
      resolved.preconditions = new Array(msg.preconditions.length);
      for (let i = 0; i < resolved.preconditions.length; ++i) {
        resolved.preconditions[i] = RoutePrecondition.Resolve(msg.preconditions[i]);
      }
    }
    else {
      resolved.preconditions = []
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

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    return resolved;
    }
};

module.exports = RouteSegment;
