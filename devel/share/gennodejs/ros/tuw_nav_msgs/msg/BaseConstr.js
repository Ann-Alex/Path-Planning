// Auto-generated. Do not edit!

// (in-package tuw_nav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BaseConstr {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.v_max = null;
      this.av_max = null;
      this.w_max = null;
      this.aw_max = null;
      this.omg_wh_max = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('v_max')) {
        this.v_max = initObj.v_max
      }
      else {
        this.v_max = 0.0;
      }
      if (initObj.hasOwnProperty('av_max')) {
        this.av_max = initObj.av_max
      }
      else {
        this.av_max = 0.0;
      }
      if (initObj.hasOwnProperty('w_max')) {
        this.w_max = initObj.w_max
      }
      else {
        this.w_max = 0.0;
      }
      if (initObj.hasOwnProperty('aw_max')) {
        this.aw_max = initObj.aw_max
      }
      else {
        this.aw_max = 0.0;
      }
      if (initObj.hasOwnProperty('omg_wh_max')) {
        this.omg_wh_max = initObj.omg_wh_max
      }
      else {
        this.omg_wh_max = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BaseConstr
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [v_max]
    bufferOffset = _serializer.float64(obj.v_max, buffer, bufferOffset);
    // Serialize message field [av_max]
    bufferOffset = _serializer.float64(obj.av_max, buffer, bufferOffset);
    // Serialize message field [w_max]
    bufferOffset = _serializer.float64(obj.w_max, buffer, bufferOffset);
    // Serialize message field [aw_max]
    bufferOffset = _serializer.float64(obj.aw_max, buffer, bufferOffset);
    // Serialize message field [omg_wh_max]
    bufferOffset = _serializer.float64(obj.omg_wh_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaseConstr
    let len;
    let data = new BaseConstr(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [v_max]
    data.v_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [av_max]
    data.av_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [w_max]
    data.w_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [aw_max]
    data.aw_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omg_wh_max]
    data.omg_wh_max = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_nav_msgs/BaseConstr';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3889ce5233d8459f082e82157699ce5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 v_max
    float64 av_max
    float64 w_max
    float64 aw_max
    float64 omg_wh_max
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BaseConstr(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.v_max !== undefined) {
      resolved.v_max = msg.v_max;
    }
    else {
      resolved.v_max = 0.0
    }

    if (msg.av_max !== undefined) {
      resolved.av_max = msg.av_max;
    }
    else {
      resolved.av_max = 0.0
    }

    if (msg.w_max !== undefined) {
      resolved.w_max = msg.w_max;
    }
    else {
      resolved.w_max = 0.0
    }

    if (msg.aw_max !== undefined) {
      resolved.aw_max = msg.aw_max;
    }
    else {
      resolved.aw_max = 0.0
    }

    if (msg.omg_wh_max !== undefined) {
      resolved.omg_wh_max = msg.omg_wh_max;
    }
    else {
      resolved.omg_wh_max = 0.0
    }

    return resolved;
    }
};

module.exports = BaseConstr;
