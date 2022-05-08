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

class IwsCmdVRATVec {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.v = null;
      this.rho = null;
      this.phi = null;
      this.delta_t = null;
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
      if (initObj.hasOwnProperty('rho')) {
        this.rho = initObj.rho
      }
      else {
        this.rho = [];
      }
      if (initObj.hasOwnProperty('phi')) {
        this.phi = initObj.phi
      }
      else {
        this.phi = [];
      }
      if (initObj.hasOwnProperty('delta_t')) {
        this.delta_t = initObj.delta_t
      }
      else {
        this.delta_t = [];
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
    // Serializes a message object of type IwsCmdVRATVec
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _arraySerializer.float64(obj.v, buffer, bufferOffset, null);
    // Serialize message field [rho]
    bufferOffset = _arraySerializer.float64(obj.rho, buffer, bufferOffset, null);
    // Serialize message field [phi]
    bufferOffset = _arraySerializer.float64(obj.phi, buffer, bufferOffset, null);
    // Serialize message field [delta_t]
    bufferOffset = _arraySerializer.float64(obj.delta_t, buffer, bufferOffset, null);
    // Serialize message field [state0]
    bufferOffset = _arraySerializer.float64(obj.state0, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IwsCmdVRATVec
    let len;
    let data = new IwsCmdVRATVec(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [rho]
    data.rho = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [phi]
    data.phi = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [delta_t]
    data.delta_t = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [state0]
    data.state0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.v.length;
    length += 8 * object.rho.length;
    length += 8 * object.phi.length;
    length += 8 * object.delta_t.length;
    length += 8 * object.state0.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_nav_msgs/IwsCmdVRATVec';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffc1d6dbf30b45c520195bc2f2064824';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[] v
    float64[] rho
    float64[] phi
    float64[] delta_t
    
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
    const resolved = new IwsCmdVRATVec(null);
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

    if (msg.rho !== undefined) {
      resolved.rho = msg.rho;
    }
    else {
      resolved.rho = []
    }

    if (msg.phi !== undefined) {
      resolved.phi = msg.phi;
    }
    else {
      resolved.phi = []
    }

    if (msg.delta_t !== undefined) {
      resolved.delta_t = msg.delta_t;
    }
    else {
      resolved.delta_t = []
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

module.exports = IwsCmdVRATVec;
