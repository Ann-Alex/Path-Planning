// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Order = require('./Order.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OrderArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.orders = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('orders')) {
        this.orders = initObj.orders
      }
      else {
        this.orders = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OrderArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [orders]
    // Serialize the length for message field [orders]
    bufferOffset = _serializer.uint32(obj.orders.length, buffer, bufferOffset);
    obj.orders.forEach((val) => {
      bufferOffset = Order.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OrderArray
    let len;
    let data = new OrderArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [orders]
    // Deserialize array length for message field [orders]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.orders = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.orders[i] = Order.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.orders.forEach((val) => {
      length += Order.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/OrderArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbc022246db3f3814b8f8dca9834219a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## List of multiple orders
    #################################################################
    
    Header header
    tuw_multi_robot_msgs/Order[] orders
    
    
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
    MSG: tuw_multi_robot_msgs/Order
    #################################################################
    ## Good to deliver from position A to B (via intermediate 
    ## positions)
    #################################################################
    
    Header                 header
    int32                  order_id
    string                 order_name
    Station[]              stations
    
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
    const resolved = new OrderArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.orders !== undefined) {
      resolved.orders = new Array(msg.orders.length);
      for (let i = 0; i < resolved.orders.length; ++i) {
        resolved.orders[i] = Order.Resolve(msg.orders[i]);
      }
    }
    else {
      resolved.orders = []
    }

    return resolved;
    }
};

module.exports = OrderArray;
