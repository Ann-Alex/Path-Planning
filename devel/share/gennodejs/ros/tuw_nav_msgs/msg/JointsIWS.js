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

class JointsIWS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type_steering = null;
      this.type_revolute = null;
      this.steering = null;
      this.revolute = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type_steering')) {
        this.type_steering = initObj.type_steering
      }
      else {
        this.type_steering = '';
      }
      if (initObj.hasOwnProperty('type_revolute')) {
        this.type_revolute = initObj.type_revolute
      }
      else {
        this.type_revolute = '';
      }
      if (initObj.hasOwnProperty('steering')) {
        this.steering = initObj.steering
      }
      else {
        this.steering = [];
      }
      if (initObj.hasOwnProperty('revolute')) {
        this.revolute = initObj.revolute
      }
      else {
        this.revolute = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointsIWS
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type_steering]
    bufferOffset = _serializer.string(obj.type_steering, buffer, bufferOffset);
    // Serialize message field [type_revolute]
    bufferOffset = _serializer.string(obj.type_revolute, buffer, bufferOffset);
    // Serialize message field [steering]
    bufferOffset = _arraySerializer.float64(obj.steering, buffer, bufferOffset, null);
    // Serialize message field [revolute]
    bufferOffset = _arraySerializer.float64(obj.revolute, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointsIWS
    let len;
    let data = new JointsIWS(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type_steering]
    data.type_steering = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type_revolute]
    data.type_revolute = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [steering]
    data.steering = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [revolute]
    data.revolute = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.type_steering);
    length += _getByteLength(object.type_revolute);
    length += 8 * object.steering.length;
    length += 8 * object.revolute.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_nav_msgs/JointsIWS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2f4c6789d90337c4c6bcd925166ca7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Message for sensing/control of an indepenend N wheel steering platform 
    Header header
    
    #the type defines the usage and units such as cmd_torque, cmd_acceleration, cmd_velocity, cmd_position, measured_torque, measured_acceleration, measured_velocity, measured_position
    string type_steering
    string type_revolute 
    
    #actual sensing/control variables of the defined type
    float64[] steering
    float64[] revolute
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
    const resolved = new JointsIWS(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type_steering !== undefined) {
      resolved.type_steering = msg.type_steering;
    }
    else {
      resolved.type_steering = ''
    }

    if (msg.type_revolute !== undefined) {
      resolved.type_revolute = msg.type_revolute;
    }
    else {
      resolved.type_revolute = ''
    }

    if (msg.steering !== undefined) {
      resolved.steering = msg.steering;
    }
    else {
      resolved.steering = []
    }

    if (msg.revolute !== undefined) {
      resolved.revolute = msg.revolute;
    }
    else {
      resolved.revolute = []
    }

    return resolved;
    }
};

module.exports = JointsIWS;
