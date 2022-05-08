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

class RWDKinCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vel = null;
      this.front_center_wheel_angle = null;
      this.brake_pressure = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
      if (initObj.hasOwnProperty('front_center_wheel_angle')) {
        this.front_center_wheel_angle = initObj.front_center_wheel_angle
      }
      else {
        this.front_center_wheel_angle = 0.0;
      }
      if (initObj.hasOwnProperty('brake_pressure')) {
        this.brake_pressure = initObj.brake_pressure
      }
      else {
        this.brake_pressure = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RWDKinCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float64(obj.vel, buffer, bufferOffset);
    // Serialize message field [front_center_wheel_angle]
    bufferOffset = _serializer.float64(obj.front_center_wheel_angle, buffer, bufferOffset);
    // Serialize message field [brake_pressure]
    bufferOffset = _serializer.float64(obj.brake_pressure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RWDKinCmd
    let len;
    let data = new RWDKinCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_center_wheel_angle]
    data.front_center_wheel_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_pressure]
    data.brake_pressure = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_vehicle_msgs/RWDKinCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9dacac9c5016e81b75002abe61b3ee0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # requested speed on the center of the rear axis [m/s]
    float64 vel
    
    # requested steering angle of the imaginary wheel at the center of the front axis [degrees]
    float64 front_center_wheel_angle
    
    # requested brake pressure for the system in bar measured at the front brake circuit
    # if > 0, vel is being overriden and 0-torque is applied on the motors
    float64 brake_pressure
    
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
    const resolved = new RWDKinCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    if (msg.front_center_wheel_angle !== undefined) {
      resolved.front_center_wheel_angle = msg.front_center_wheel_angle;
    }
    else {
      resolved.front_center_wheel_angle = 0.0
    }

    if (msg.brake_pressure !== undefined) {
      resolved.brake_pressure = msg.brake_pressure;
    }
    else {
      resolved.brake_pressure = 0.0
    }

    return resolved;
    }
};

module.exports = RWDKinCmd;
