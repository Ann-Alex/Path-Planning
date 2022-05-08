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

class RWDControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_torque = null;
      this.right_torque = null;
      this.steering_angle = null;
      this.steering_active = null;
      this.brake_pressure = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_torque')) {
        this.left_torque = initObj.left_torque
      }
      else {
        this.left_torque = 0.0;
      }
      if (initObj.hasOwnProperty('right_torque')) {
        this.right_torque = initObj.right_torque
      }
      else {
        this.right_torque = 0.0;
      }
      if (initObj.hasOwnProperty('steering_angle')) {
        this.steering_angle = initObj.steering_angle
      }
      else {
        this.steering_angle = 0.0;
      }
      if (initObj.hasOwnProperty('steering_active')) {
        this.steering_active = initObj.steering_active
      }
      else {
        this.steering_active = false;
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
    // Serializes a message object of type RWDControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_torque]
    bufferOffset = _serializer.float64(obj.left_torque, buffer, bufferOffset);
    // Serialize message field [right_torque]
    bufferOffset = _serializer.float64(obj.right_torque, buffer, bufferOffset);
    // Serialize message field [steering_angle]
    bufferOffset = _serializer.float64(obj.steering_angle, buffer, bufferOffset);
    // Serialize message field [steering_active]
    bufferOffset = _serializer.bool(obj.steering_active, buffer, bufferOffset);
    // Serialize message field [brake_pressure]
    bufferOffset = _serializer.float64(obj.brake_pressure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RWDControl
    let len;
    let data = new RWDControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_torque]
    data.left_torque = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_torque]
    data.right_torque = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_angle]
    data.steering_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_active]
    data.steering_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_pressure]
    data.brake_pressure = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_vehicle_msgs/RWDControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ab408c0408c0e176d10871e0558e308';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # requested torque on the left rear wheel in Nm
    float64 left_torque
    # requested torque on the right rear wheel in Nm
    float64 right_torque
    # requested steering angle in degrees
    float64 steering_angle
    # whether the vehicle should steer, or remain in the current steering position without applying force
    bool steering_active
    # requested brake pressure for the system in bar measured at the front brake circuit
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
    const resolved = new RWDControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_torque !== undefined) {
      resolved.left_torque = msg.left_torque;
    }
    else {
      resolved.left_torque = 0.0
    }

    if (msg.right_torque !== undefined) {
      resolved.right_torque = msg.right_torque;
    }
    else {
      resolved.right_torque = 0.0
    }

    if (msg.steering_angle !== undefined) {
      resolved.steering_angle = msg.steering_angle;
    }
    else {
      resolved.steering_angle = 0.0
    }

    if (msg.steering_active !== undefined) {
      resolved.steering_active = msg.steering_active;
    }
    else {
      resolved.steering_active = false
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

module.exports = RWDControl;
