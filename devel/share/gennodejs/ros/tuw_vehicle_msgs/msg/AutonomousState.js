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

class AutonomousState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.mission = null;
      this.failed_systems = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('mission')) {
        this.mission = initObj.mission
      }
      else {
        this.mission = 0;
      }
      if (initObj.hasOwnProperty('failed_systems')) {
        this.failed_systems = initObj.failed_systems
      }
      else {
        this.failed_systems = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutonomousState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [mission]
    bufferOffset = _serializer.uint8(obj.mission, buffer, bufferOffset);
    // Serialize message field [failed_systems]
    bufferOffset = _arraySerializer.uint8(obj.failed_systems, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutonomousState
    let len;
    let data = new AutonomousState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mission]
    data.mission = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [failed_systems]
    data.failed_systems = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.failed_systems.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_vehicle_msgs/AutonomousState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd70f585dba7442399f4beebf01ac24b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 MISSION_NONE=1
    uint8 MISSION_BRAKE_TEST=2
    uint8 MISSION_ACCELERATION=3
    uint8 MISSION_SKIDPAD=4
    uint8 MISSION_TRACKDRIVE=5
    uint8 MISSION_TEST=6
    
    # mission to test correct heading of the vehicle while jacked up
    # the front wheels should align between the next cones seen by the vehicle
    uint8 MISSION_JACKED_UP_STEERING=100
    
    uint8 STATE_OFF=1
    uint8 STATE_READY=2
    uint8 STATE_ACTIVE=3
    uint8 STATE_EBS=4
    uint8 STATE_FINISHED=5
    
    uint8 state
    uint8 mission
    uint8[] failed_systems
    
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
    const resolved = new AutonomousState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.mission !== undefined) {
      resolved.mission = msg.mission;
    }
    else {
      resolved.mission = 0
    }

    if (msg.failed_systems !== undefined) {
      resolved.failed_systems = msg.failed_systems;
    }
    else {
      resolved.failed_systems = []
    }

    return resolved;
    }
};

// Constants for message
AutonomousState.Constants = {
  MISSION_NONE: 1,
  MISSION_BRAKE_TEST: 2,
  MISSION_ACCELERATION: 3,
  MISSION_SKIDPAD: 4,
  MISSION_TRACKDRIVE: 5,
  MISSION_TEST: 6,
  MISSION_JACKED_UP_STEERING: 100,
  STATE_OFF: 1,
  STATE_READY: 2,
  STATE_ACTIVE: 3,
  STATE_EBS: 4,
  STATE_FINISHED: 5,
}

module.exports = AutonomousState;
