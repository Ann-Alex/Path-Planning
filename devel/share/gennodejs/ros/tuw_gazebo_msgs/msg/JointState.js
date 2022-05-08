// Auto-generated. Do not edit!

// (in-package tuw_gazebo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.xdot = null;
      this.xddot = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('xdot')) {
        this.xdot = initObj.xdot
      }
      else {
        this.xdot = 0.0;
      }
      if (initObj.hasOwnProperty('xddot')) {
        this.xddot = initObj.xddot
      }
      else {
        this.xddot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointState
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [xdot]
    bufferOffset = _serializer.float64(obj.xdot, buffer, bufferOffset);
    // Serialize message field [xddot]
    bufferOffset = _serializer.float64(obj.xddot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointState
    let len;
    let data = new JointState(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xdot]
    data.xdot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xddot]
    data.xddot = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_gazebo_msgs/JointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '640c08b997ef5ea0a1e6b2142dbc0465';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 xdot
    float64 xddot
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointState(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.xdot !== undefined) {
      resolved.xdot = msg.xdot;
    }
    else {
      resolved.xdot = 0.0
    }

    if (msg.xddot !== undefined) {
      resolved.xddot = msg.xddot;
    }
    else {
      resolved.xddot = 0.0
    }

    return resolved;
    }
};

module.exports = JointState;
