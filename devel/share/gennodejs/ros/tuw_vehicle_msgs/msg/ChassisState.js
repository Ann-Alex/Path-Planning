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

class ChassisState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vx = null;
      this.vy = null;
      this.omg = null;
      this.steering_angle = null;
      this.steering_speed = null;
      this.front_brake_pressure = null;
      this.rear_brake_pressure = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('omg')) {
        this.omg = initObj.omg
      }
      else {
        this.omg = 0.0;
      }
      if (initObj.hasOwnProperty('steering_angle')) {
        this.steering_angle = initObj.steering_angle
      }
      else {
        this.steering_angle = 0.0;
      }
      if (initObj.hasOwnProperty('steering_speed')) {
        this.steering_speed = initObj.steering_speed
      }
      else {
        this.steering_speed = 0.0;
      }
      if (initObj.hasOwnProperty('front_brake_pressure')) {
        this.front_brake_pressure = initObj.front_brake_pressure
      }
      else {
        this.front_brake_pressure = 0.0;
      }
      if (initObj.hasOwnProperty('rear_brake_pressure')) {
        this.rear_brake_pressure = initObj.rear_brake_pressure
      }
      else {
        this.rear_brake_pressure = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.float64(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float64(obj.vy, buffer, bufferOffset);
    // Serialize message field [omg]
    bufferOffset = _serializer.float64(obj.omg, buffer, bufferOffset);
    // Serialize message field [steering_angle]
    bufferOffset = _serializer.float64(obj.steering_angle, buffer, bufferOffset);
    // Serialize message field [steering_speed]
    bufferOffset = _serializer.float64(obj.steering_speed, buffer, bufferOffset);
    // Serialize message field [front_brake_pressure]
    bufferOffset = _serializer.float64(obj.front_brake_pressure, buffer, bufferOffset);
    // Serialize message field [rear_brake_pressure]
    bufferOffset = _serializer.float64(obj.rear_brake_pressure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisState
    let len;
    let data = new ChassisState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omg]
    data.omg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_angle]
    data.steering_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_speed]
    data.steering_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_brake_pressure]
    data.front_brake_pressure = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_brake_pressure]
    data.rear_brake_pressure = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_vehicle_msgs/ChassisState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '625847a578b2c95d3b5adc71c6f670c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 vx
    float64 vy
    float64 omg
    
    # in degrees, negative to the left
    float64 steering_angle
    
    # in deg/s, negative to the left
    float64 steering_speed
    
    # in bar
    float64 front_brake_pressure
    float64 rear_brake_pressure
    
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
    const resolved = new ChassisState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.omg !== undefined) {
      resolved.omg = msg.omg;
    }
    else {
      resolved.omg = 0.0
    }

    if (msg.steering_angle !== undefined) {
      resolved.steering_angle = msg.steering_angle;
    }
    else {
      resolved.steering_angle = 0.0
    }

    if (msg.steering_speed !== undefined) {
      resolved.steering_speed = msg.steering_speed;
    }
    else {
      resolved.steering_speed = 0.0
    }

    if (msg.front_brake_pressure !== undefined) {
      resolved.front_brake_pressure = msg.front_brake_pressure;
    }
    else {
      resolved.front_brake_pressure = 0.0
    }

    if (msg.rear_brake_pressure !== undefined) {
      resolved.rear_brake_pressure = msg.rear_brake_pressure;
    }
    else {
      resolved.rear_brake_pressure = 0.0
    }

    return resolved;
    }
};

module.exports = ChassisState;
