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

class RouterStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.success = null;
      this.missing_robots = null;
      this.duration = null;
      this.overall_path_length = null;
      this.longest_path_length = null;
      this.priority_scheduling_attemps = null;
      this.speed_scheduling_attemps = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('missing_robots')) {
        this.missing_robots = initObj.missing_robots
      }
      else {
        this.missing_robots = [];
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
      if (initObj.hasOwnProperty('overall_path_length')) {
        this.overall_path_length = initObj.overall_path_length
      }
      else {
        this.overall_path_length = 0;
      }
      if (initObj.hasOwnProperty('longest_path_length')) {
        this.longest_path_length = initObj.longest_path_length
      }
      else {
        this.longest_path_length = 0;
      }
      if (initObj.hasOwnProperty('priority_scheduling_attemps')) {
        this.priority_scheduling_attemps = initObj.priority_scheduling_attemps
      }
      else {
        this.priority_scheduling_attemps = 0;
      }
      if (initObj.hasOwnProperty('speed_scheduling_attemps')) {
        this.speed_scheduling_attemps = initObj.speed_scheduling_attemps
      }
      else {
        this.speed_scheduling_attemps = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouterStatus
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [missing_robots]
    bufferOffset = _arraySerializer.string(obj.missing_robots, buffer, bufferOffset, null);
    // Serialize message field [duration]
    bufferOffset = _serializer.int32(obj.duration, buffer, bufferOffset);
    // Serialize message field [overall_path_length]
    bufferOffset = _serializer.int32(obj.overall_path_length, buffer, bufferOffset);
    // Serialize message field [longest_path_length]
    bufferOffset = _serializer.int32(obj.longest_path_length, buffer, bufferOffset);
    // Serialize message field [priority_scheduling_attemps]
    bufferOffset = _serializer.int32(obj.priority_scheduling_attemps, buffer, bufferOffset);
    // Serialize message field [speed_scheduling_attemps]
    bufferOffset = _serializer.int32(obj.speed_scheduling_attemps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouterStatus
    let len;
    let data = new RouterStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [missing_robots]
    data.missing_robots = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [duration]
    data.duration = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [overall_path_length]
    data.overall_path_length = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [longest_path_length]
    data.longest_path_length = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [priority_scheduling_attemps]
    data.priority_scheduling_attemps = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed_scheduling_attemps]
    data.speed_scheduling_attemps = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.missing_robots.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/RouterStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '155759b83cd058836f14589c98203bee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## A message to publish the status of the last route 
    ## generation
    #################################################################
    
    int32 id # the unique id of the new plan
    bool success # true if a routing table was found to the given scenario
    string[] missing_robots # if the plan fails because of absent robots, these robots are listed here
    int32 duration # the time until a routing table was found
    int32 overall_path_length # the overall path length in the routing table (calculated using weights)
    int32 longest_path_length # the longest path length in a routing table (calculated using weights)
    int32 priority_scheduling_attemps # shows how often robot priorities are exchanged
    int32 speed_scheduling_attemps # shows how many robots speed was reduced during planning
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RouterStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.missing_robots !== undefined) {
      resolved.missing_robots = msg.missing_robots;
    }
    else {
      resolved.missing_robots = []
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    if (msg.overall_path_length !== undefined) {
      resolved.overall_path_length = msg.overall_path_length;
    }
    else {
      resolved.overall_path_length = 0
    }

    if (msg.longest_path_length !== undefined) {
      resolved.longest_path_length = msg.longest_path_length;
    }
    else {
      resolved.longest_path_length = 0
    }

    if (msg.priority_scheduling_attemps !== undefined) {
      resolved.priority_scheduling_attemps = msg.priority_scheduling_attemps;
    }
    else {
      resolved.priority_scheduling_attemps = 0
    }

    if (msg.speed_scheduling_attemps !== undefined) {
      resolved.speed_scheduling_attemps = msg.speed_scheduling_attemps;
    }
    else {
      resolved.speed_scheduling_attemps = 0
    }

    return resolved;
    }
};

module.exports = RouterStatus;
