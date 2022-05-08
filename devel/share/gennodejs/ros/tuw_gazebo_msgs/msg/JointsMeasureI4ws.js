// Auto-generated. Do not edit!

// (in-package tuw_gazebo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Measure = require('./Measure.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointsMeasureI4ws {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new Array(8).fill(new Measure());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointsMeasureI4ws
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [y] has the right length
    if (obj.y.length !== 8) {
      throw new Error('Unable to serialize array field y - length must be 8')
    }
    // Serialize message field [y]
    obj.y.forEach((val) => {
      bufferOffset = Measure.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointsMeasureI4ws
    let len;
    let data = new JointsMeasureI4ws(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [y]
    len = 8;
    data.y = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.y[i] = Measure.deserialize(buffer, bufferOffset)
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
    return 'tuw_gazebo_msgs/JointsMeasureI4ws';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5452564cebdea4f1fd3dab3f5100ba5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Measure[8] y
    
    #Those are the 8 joints order
    #JointState steer_tr
    #JointState steer_tl
    #JointState steer_br
    #JointState steer_bl
    
    #JointState wheel_tr
    #JointState wheel_tl
    #JointState wheel_br
    #JointState wheel_bl
    
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
    MSG: tuw_gazebo_msgs/Measure
    float64 x
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointsMeasureI4ws(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.y !== undefined) {
      resolved.y = new Array(8)
      for (let i = 0; i < resolved.y.length; ++i) {
        if (msg.y.length > i) {
          resolved.y[i] = Measure.Resolve(msg.y[i]);
        }
        else {
          resolved.y[i] = new Measure();
        }
      }
    }
    else {
      resolved.y = new Array(8).fill(new Measure())
    }

    return resolved;
    }
};

module.exports = JointsMeasureI4ws;
