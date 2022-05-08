// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RoutePrecondition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.current_route_segment = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = '';
      }
      if (initObj.hasOwnProperty('current_route_segment')) {
        this.current_route_segment = initObj.current_route_segment
      }
      else {
        this.current_route_segment = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutePrecondition
    // Serialize message field [robot_id]
    bufferOffset = _serializer.string(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [current_route_segment]
    bufferOffset = _serializer.int32(obj.current_route_segment, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutePrecondition
    let len;
    let data = new RoutePrecondition(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_route_segment]
    data.current_route_segment = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robot_id);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/RoutePrecondition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5325912e1dc77bd158888f84bb4b040e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoutePrecondition(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = ''
    }

    if (msg.current_route_segment !== undefined) {
      resolved.current_route_segment = msg.current_route_segment;
    }
    else {
      resolved.current_route_segment = 0
    }

    return resolved;
    }
};

module.exports = RoutePrecondition;
