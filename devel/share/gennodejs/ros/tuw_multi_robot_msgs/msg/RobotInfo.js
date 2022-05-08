// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoutePrecondition = require('./RoutePrecondition.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RobotInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_name = null;
      this.pose = null;
      this.shape = null;
      this.shape_variables = null;
      this.sync = null;
      this.mode = null;
      this.status = null;
      this.good_id = null;
      this.order_id = null;
      this.order_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = 0;
      }
      if (initObj.hasOwnProperty('shape_variables')) {
        this.shape_variables = initObj.shape_variables
      }
      else {
        this.shape_variables = [];
      }
      if (initObj.hasOwnProperty('sync')) {
        this.sync = initObj.sync
      }
      else {
        this.sync = new RoutePrecondition();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('good_id')) {
        this.good_id = initObj.good_id
      }
      else {
        this.good_id = 0;
      }
      if (initObj.hasOwnProperty('order_id')) {
        this.order_id = initObj.order_id
      }
      else {
        this.order_id = 0;
      }
      if (initObj.hasOwnProperty('order_status')) {
        this.order_status = initObj.order_status
      }
      else {
        this.order_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = _serializer.int32(obj.shape, buffer, bufferOffset);
    // Serialize message field [shape_variables]
    bufferOffset = _arraySerializer.float32(obj.shape_variables, buffer, bufferOffset, null);
    // Serialize message field [sync]
    bufferOffset = RoutePrecondition.serialize(obj.sync, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [good_id]
    bufferOffset = _serializer.int32(obj.good_id, buffer, bufferOffset);
    // Serialize message field [order_id]
    bufferOffset = _serializer.int32(obj.order_id, buffer, bufferOffset);
    // Serialize message field [order_status]
    bufferOffset = _serializer.int32(obj.order_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfo
    let len;
    let data = new RobotInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shape_variables]
    data.shape_variables = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [sync]
    data.sync = RoutePrecondition.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [good_id]
    data.good_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [order_id]
    data.order_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [order_status]
    data.order_status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.robot_name);
    length += 4 * object.shape_variables.length;
    length += RoutePrecondition.getMessageSize(object.sync);
    return length + 376;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/RobotInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '305fb15e717f7fc9b8a810ea72ac87ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## Presents dynamic parameters of a robot
    #################################################################
    
    Header header                            # the creation time
    string robot_name                        # the name of the robot (used in preconditions and topics)
    geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header
    int32 shape                              # the shape of the robots (see enums)
    float32[] shape_variables                # shape variables to define width height, ...
    RoutePrecondition sync                   # the current position in the last received plan (-1 means none)
    int32   mode                             # the mode of operation
    int32   status                           # the status of the robot
    int32   good_id                          # the good id attached to the robot
    int32   order_id                         # the order id scheduled to this robot (-1: none)
    int32   order_status                     # the status of the assigned order
    
    # mode
    int32 MODE_NA = 0                   # undefined mode
    int32 MODE_IDLE = 1                 # robot is idle
    int32 MODE_SEGMENT_FOLLOWING = 2    # robot is in mode segment following
    int32 MODE_PICKUP = 3               # robot is picking up goods
    
    # status
    int32 STATUS_DRIVING = 0            # robot is driving
    int32 STATUS_STOPPED = 1            # robot has stopped
    int32 STATUS_DONE = 2               # robot has finished its last job
    int32 STATUS_BROKEN = 3             # robot is broken and not ready for any task
    
    # good_id
    int32 GOOD_EMPTY = -1               # no goods attached
    int32 GOOD_NA = -2                  # undefined good
    
    # shape
    int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars
    
    # order_status
    int32 ORDER_NONE = 0                # no order assigned
    int32 ORDER_APPROACH = 1            # the robot approaches the first station of the order
    int32 ORDER_PICKUP = 2              # the robot picks up a good at the station
    int32 ORDER_TRANSPORT = 3           # the robot currently transports a good from one station to another
    int32 ORDER_DROP = 4                # the robot drops a good at the last station of its order, finishing the order
    
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
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    
    ================================================================================
    MSG: tuw_multi_robot_msgs/RoutePrecondition
    #################################################################
    ## Route Preconditions are used to sync robots on a route
    ## e.g.: Each robot publishes its current step of its route 
    ## with such a message
    ## The specific segments of a route are marked with such 
    ## preconditions to block a robot from entering a segment
    ## until the sync message of the other robot has the right 
    ## route_segment_nr
    #################################################################
    
    string robot_id                  # the robot name for the precondition 
    int32 current_route_segment      # the segment nr of the route executed by the given robot
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = 0
    }

    if (msg.shape_variables !== undefined) {
      resolved.shape_variables = msg.shape_variables;
    }
    else {
      resolved.shape_variables = []
    }

    if (msg.sync !== undefined) {
      resolved.sync = RoutePrecondition.Resolve(msg.sync)
    }
    else {
      resolved.sync = new RoutePrecondition()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.good_id !== undefined) {
      resolved.good_id = msg.good_id;
    }
    else {
      resolved.good_id = 0
    }

    if (msg.order_id !== undefined) {
      resolved.order_id = msg.order_id;
    }
    else {
      resolved.order_id = 0
    }

    if (msg.order_status !== undefined) {
      resolved.order_status = msg.order_status;
    }
    else {
      resolved.order_status = 0
    }

    return resolved;
    }
};

// Constants for message
RobotInfo.Constants = {
  MODE_NA: 0,
  MODE_IDLE: 1,
  MODE_SEGMENT_FOLLOWING: 2,
  MODE_PICKUP: 3,
  STATUS_DRIVING: 0,
  STATUS_STOPPED: 1,
  STATUS_DONE: 2,
  STATUS_BROKEN: 3,
  GOOD_EMPTY: -1,
  GOOD_NA: -2,
  SHAPE_CIRCLE: 0,
  ORDER_NONE: 0,
  ORDER_APPROACH: 1,
  ORDER_PICKUP: 2,
  ORDER_TRANSPORT: 3,
  ORDER_DROP: 4,
}

module.exports = RobotInfo;
