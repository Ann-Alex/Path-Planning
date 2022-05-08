// Auto-generated. Do not edit!

// (in-package tuw_gazebo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointCmd = require('./JointCmd.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointsCmdI4ws {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = new Array(8).fill(new JointCmd());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointsCmdI4ws
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [cmd] has the right length
    if (obj.cmd.length !== 8) {
      throw new Error('Unable to serialize array field cmd - length must be 8')
    }
    // Serialize message field [cmd]
    obj.cmd.forEach((val) => {
      bufferOffset = JointCmd.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointsCmdI4ws
    let len;
    let data = new JointsCmdI4ws(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cmd]
    len = 8;
    data.cmd = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cmd[i] = JointCmd.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_gazebo_msgs/JointsCmdI4ws';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f73647fd5aebcac5be306d55704f0b9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    JointCmd[8] cmd
    
    #Those are the 8 joints in order
    
    #JointCmd steer_tr
    #JointCmd steer_tl
    #JointCmd steer_br
    #JointCmd steer_bl
    
    #JointCmd wheel_tr
    #JointCmd wheel_tl
    #JointCmd wheel_br
    #JointCmd wheel_bl
    
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
    MSG: tuw_gazebo_msgs/JointCmd
    float64 u
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointsCmdI4ws(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = new Array(8)
      for (let i = 0; i < resolved.cmd.length; ++i) {
        if (msg.cmd.length > i) {
          resolved.cmd[i] = JointCmd.Resolve(msg.cmd[i]);
        }
        else {
          resolved.cmd[i] = new JointCmd();
        }
      }
    }
    else {
      resolved.cmd = new Array(8).fill(new JointCmd())
    }

    return resolved;
    }
};

module.exports = JointsCmdI4ws;
