// Auto-generated. Do not edit!

// (in-package tuw_vehicle_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CmdMpcVecVphi {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.v = null;
      this.p = null;
      this.d_tv = null;
      this.d_tp = null;
      this.state0 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = [];
      }
      if (initObj.hasOwnProperty('p')) {
        this.p = initObj.p
      }
      else {
        this.p = [];
      }
      if (initObj.hasOwnProperty('d_tv')) {
        this.d_tv = initObj.d_tv
      }
      else {
        this.d_tv = [];
      }
      if (initObj.hasOwnProperty('d_tp')) {
        this.d_tp = initObj.d_tp
      }
      else {
        this.d_tp = [];
      }
      if (initObj.hasOwnProperty('state0')) {
        this.state0 = initObj.state0
      }
      else {
        this.state0 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CmdMpcVecVphi
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _arraySerializer.float64(obj.v, buffer, bufferOffset, null);
    // Serialize message field [p]
    bufferOffset = _arraySerializer.float64(obj.p, buffer, bufferOffset, null);
    // Serialize message field [d_tv]
    bufferOffset = _arraySerializer.float64(obj.d_tv, buffer, bufferOffset, null);
    // Serialize message field [d_tp]
    bufferOffset = _arraySerializer.float64(obj.d_tp, buffer, bufferOffset, null);
    // Serialize message field [state0]
    bufferOffset = _arraySerializer.float64(obj.state0, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CmdMpcVecVphi
    let len;
    let data = new CmdMpcVecVphi(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [p]
    data.p = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [d_tv]
    data.d_tv = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [d_tp]
    data.d_tp = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [state0]
    data.state0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.v.length;
    length += 8 * object.p.length;
    length += 8 * object.d_tv.length;
    length += 8 * object.d_tp.length;
    length += 8 * object.state0.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_vehicle_msgs/CmdMpcVecVphi';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47cbbdeab2d846ecbac96b455035969a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[] v
    float64[] p
    float64[] d_tv
    float64[] d_tp
    
    float64[] state0
    
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
    const resolved = new CmdMpcVecVphi(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = []
    }

    if (msg.p !== undefined) {
      resolved.p = msg.p;
    }
    else {
      resolved.p = []
    }

    if (msg.d_tv !== undefined) {
      resolved.d_tv = msg.d_tv;
    }
    else {
      resolved.d_tv = []
    }

    if (msg.d_tp !== undefined) {
      resolved.d_tp = msg.d_tp;
    }
    else {
      resolved.d_tp = []
    }

    if (msg.state0 !== undefined) {
      resolved.state0 = msg.state0;
    }
    else {
      resolved.state0 = []
    }

    return resolved;
    }
};

module.exports = CmdMpcVecVphi;
