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

class ControllerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.progress = null;
      this.progress_in_relation_to = null;
      this.info = null;
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
      if (initObj.hasOwnProperty('progress')) {
        this.progress = initObj.progress
      }
      else {
        this.progress = 0;
      }
      if (initObj.hasOwnProperty('progress_in_relation_to')) {
        this.progress_in_relation_to = initObj.progress_in_relation_to
      }
      else {
        this.progress_in_relation_to = 0;
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    // Serialize message field [progress]
    bufferOffset = _serializer.uint32(obj.progress, buffer, bufferOffset);
    // Serialize message field [progress_in_relation_to]
    bufferOffset = _serializer.uint32(obj.progress_in_relation_to, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerState
    let len;
    let data = new ControllerState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [progress]
    data.progress = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [progress_in_relation_to]
    data.progress_in_relation_to = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.info);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_nav_msgs/ControllerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b05c4f3aa52d3fdb601c8ae8cd5811b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## Progress/State of a trajectory controller
    #################################################################
    
    
    Header header                  # header, ...
    int32  state                   # controller state
    uint32 progress                # passed waypoints 
    uint32 progress_in_relation_to # id / seq nummer in oder to put the progess in realtion to a waypoint msg or spline msg
    string info                    # details on the controller state in human form for debugging only 
    
    
    
    int32 STATE_IDLE = 0                 # controller is inactive
    int32 STATE_DRIVING = 1              # controller is driving and following a path
    int32 STATE_FINISHED = 2             # controller finished a path
    
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
    const resolved = new ControllerState(null);
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

    if (msg.progress !== undefined) {
      resolved.progress = msg.progress;
    }
    else {
      resolved.progress = 0
    }

    if (msg.progress_in_relation_to !== undefined) {
      resolved.progress_in_relation_to = msg.progress_in_relation_to;
    }
    else {
      resolved.progress_in_relation_to = 0
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = ''
    }

    return resolved;
    }
};

// Constants for message
ControllerState.Constants = {
  STATE_IDLE: 0,
  STATE_DRIVING: 1,
  STATE_FINISHED: 2,
}

module.exports = ControllerState;
