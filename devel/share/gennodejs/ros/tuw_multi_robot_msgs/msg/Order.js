// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Station = require('./Station.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Order {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.order_id = null;
      this.order_name = null;
      this.stations = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('order_id')) {
        this.order_id = initObj.order_id
      }
      else {
        this.order_id = 0;
      }
      if (initObj.hasOwnProperty('order_name')) {
        this.order_name = initObj.order_name
      }
      else {
        this.order_name = '';
      }
      if (initObj.hasOwnProperty('stations')) {
        this.stations = initObj.stations
      }
      else {
        this.stations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Order
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [order_id]
    bufferOffset = _serializer.int32(obj.order_id, buffer, bufferOffset);
    // Serialize message field [order_name]
    bufferOffset = _serializer.string(obj.order_name, buffer, bufferOffset);
    // Serialize message field [stations]
    // Serialize the length for message field [stations]
    bufferOffset = _serializer.uint32(obj.stations.length, buffer, bufferOffset);
    obj.stations.forEach((val) => {
      bufferOffset = Station.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Order
    let len;
    let data = new Order(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [order_id]
    data.order_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [order_name]
    data.order_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stations]
    // Deserialize array length for message field [stations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.stations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.stations[i] = Station.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.order_name);
    object.stations.forEach((val) => {
      length += Station.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/Order';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '482fb916d477e45e362167df5ed6a68c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## Good to deliver from position A to B (via intermediate 
    ## positions)
    #################################################################
    
    Header                 header
    int32                  order_id
    string                 order_name
    Station[]              stations
    
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
    MSG: tuw_multi_robot_msgs/Station
    #################################################################
    ## Station for Robots to Drive to
    #################################################################
    
    Header                 header       # header
    int32                  id           # station ID
    string                 name         # station name
    geometry_msgs/Pose     pose         # station position
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Order(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.order_id !== undefined) {
      resolved.order_id = msg.order_id;
    }
    else {
      resolved.order_id = 0
    }

    if (msg.order_name !== undefined) {
      resolved.order_name = msg.order_name;
    }
    else {
      resolved.order_name = ''
    }

    if (msg.stations !== undefined) {
      resolved.stations = new Array(msg.stations.length);
      for (let i = 0; i < resolved.stations.length; ++i) {
        resolved.stations[i] = Station.Resolve(msg.stations[i]);
      }
    }
    else {
      resolved.stations = []
    }

    return resolved;
    }
};

module.exports = Order;
