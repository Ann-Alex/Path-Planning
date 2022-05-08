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

class BatteryState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.current = null;
      this.cell_voltages = null;
      this.cell_temperatures = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('cell_voltages')) {
        this.cell_voltages = initObj.cell_voltages
      }
      else {
        this.cell_voltages = [];
      }
      if (initObj.hasOwnProperty('cell_temperatures')) {
        this.cell_temperatures = initObj.cell_temperatures
      }
      else {
        this.cell_temperatures = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [cell_voltages]
    bufferOffset = _arraySerializer.float32(obj.cell_voltages, buffer, bufferOffset, null);
    // Serialize message field [cell_temperatures]
    bufferOffset = _arraySerializer.float32(obj.cell_temperatures, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryState
    let len;
    let data = new BatteryState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cell_voltages]
    data.cell_voltages = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cell_temperatures]
    data.cell_temperatures = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.cell_voltages.length;
    length += 4 * object.cell_temperatures.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_vehicle_msgs/BatteryState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4b1008fac477387c5d2c56852bbdc2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # positive current for discharging, negative current for charging
    float32 current
    
    # cell voltages of single cells
    float32[] cell_voltages
    
    # cell temperatures in degrees C
    float32[] cell_temperatures
    
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
    const resolved = new BatteryState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.cell_voltages !== undefined) {
      resolved.cell_voltages = msg.cell_voltages;
    }
    else {
      resolved.cell_voltages = []
    }

    if (msg.cell_temperatures !== undefined) {
      resolved.cell_temperatures = msg.cell_temperatures;
    }
    else {
      resolved.cell_temperatures = []
    }

    return resolved;
    }
};

module.exports = BatteryState;
