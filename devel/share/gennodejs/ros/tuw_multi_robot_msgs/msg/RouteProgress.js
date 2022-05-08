// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RouteProgress {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.passed = null;
      this.current = null;
      this.todo = null;
      this.progress = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('passed')) {
        this.passed = initObj.passed
      }
      else {
        this.passed = [];
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0;
      }
      if (initObj.hasOwnProperty('todo')) {
        this.todo = initObj.todo
      }
      else {
        this.todo = [];
      }
      if (initObj.hasOwnProperty('progress')) {
        this.progress = initObj.progress
      }
      else {
        this.progress = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouteProgress
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [passed]
    bufferOffset = _arraySerializer.int32(obj.passed, buffer, bufferOffset, null);
    // Serialize message field [current]
    bufferOffset = _serializer.int32(obj.current, buffer, bufferOffset);
    // Serialize message field [todo]
    bufferOffset = _arraySerializer.int32(obj.todo, buffer, bufferOffset, null);
    // Serialize message field [progress]
    bufferOffset = _serializer.float32(obj.progress, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouteProgress
    let len;
    let data = new RouteProgress(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [passed]
    data.passed = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [current]
    data.current = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [todo]
    data.todo = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [progress]
    data.progress = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.passed.length;
    length += 4 * object.todo.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/RouteProgress';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb4a2dcff1f73fe83b54cde1037fad99';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header           
    int32[] passed   # A list of already passed route segment id's.
    int32 current    # The route segment id where the robot is currently located.
    int32[] todo     # A list of route segment id's which will be visited by the robot. If this list is empty, the robot has finished its route.
    float32 progress        # The route progress in %.
    
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
    const resolved = new RouteProgress(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.passed !== undefined) {
      resolved.passed = msg.passed;
    }
    else {
      resolved.passed = []
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0
    }

    if (msg.todo !== undefined) {
      resolved.todo = msg.todo;
    }
    else {
      resolved.todo = []
    }

    if (msg.progress !== undefined) {
      resolved.progress = msg.progress;
    }
    else {
      resolved.progress = 0.0
    }

    return resolved;
    }
};

module.exports = RouteProgress;
