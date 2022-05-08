// Auto-generated. Do not edit!

// (in-package tuw_nav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Float64Array = require('./Float64Array.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Spline {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.knots = null;
      this.ctrls = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('knots')) {
        this.knots = initObj.knots
      }
      else {
        this.knots = [];
      }
      if (initObj.hasOwnProperty('ctrls')) {
        this.ctrls = initObj.ctrls
      }
      else {
        this.ctrls = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Spline
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [knots]
    bufferOffset = _arraySerializer.float64(obj.knots, buffer, bufferOffset, null);
    // Serialize message field [ctrls]
    // Serialize the length for message field [ctrls]
    bufferOffset = _serializer.uint32(obj.ctrls.length, buffer, bufferOffset);
    obj.ctrls.forEach((val) => {
      bufferOffset = Float64Array.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Spline
    let len;
    let data = new Spline(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [knots]
    data.knots = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ctrls]
    // Deserialize array length for message field [ctrls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ctrls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ctrls[i] = Float64Array.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.knots.length;
    object.ctrls.forEach((val) => {
      length += Float64Array.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_nav_msgs/Spline';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b00a6d2ce6d30ce3d71faff66791a89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[] knots
    Float64Array[] ctrls
    
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
    MSG: tuw_nav_msgs/Float64Array
    float64[] val
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Spline(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.knots !== undefined) {
      resolved.knots = msg.knots;
    }
    else {
      resolved.knots = []
    }

    if (msg.ctrls !== undefined) {
      resolved.ctrls = new Array(msg.ctrls.length);
      for (let i = 0; i < resolved.ctrls.length; ++i) {
        resolved.ctrls[i] = Float64Array.Resolve(msg.ctrls[i]);
      }
    }
    else {
      resolved.ctrls = []
    }

    return resolved;
    }
};

module.exports = Spline;
