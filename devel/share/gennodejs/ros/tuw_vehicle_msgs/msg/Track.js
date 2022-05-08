// Auto-generated. Do not edit!

// (in-package tuw_vehicle_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackMarking = require('./TrackMarking.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Track {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_border = null;
      this.right_border = null;
      this.waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_border')) {
        this.left_border = initObj.left_border
      }
      else {
        this.left_border = [];
      }
      if (initObj.hasOwnProperty('right_border')) {
        this.right_border = initObj.right_border
      }
      else {
        this.right_border = [];
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Track
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_border]
    // Serialize the length for message field [left_border]
    bufferOffset = _serializer.uint32(obj.left_border.length, buffer, bufferOffset);
    obj.left_border.forEach((val) => {
      bufferOffset = TrackMarking.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_border]
    // Serialize the length for message field [right_border]
    bufferOffset = _serializer.uint32(obj.right_border.length, buffer, bufferOffset);
    obj.right_border.forEach((val) => {
      bufferOffset = TrackMarking.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Track
    let len;
    let data = new Track(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_border]
    // Deserialize array length for message field [left_border]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_border = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_border[i] = TrackMarking.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_border]
    // Deserialize array length for message field [right_border]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_border = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_border[i] = TrackMarking.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 25 * object.left_border.length;
    length += 25 * object.right_border.length;
    length += 24 * object.waypoints.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_vehicle_msgs/Track';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97f194a3cc8ae0e44be5bd32e193a98f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Formula Student Racetrack
    Header header
    
    # ordered sequence of markings on the left side of the track
    TrackMarking[] left_border
    
    # ordered sequence of markings on the right side of the track
    TrackMarking[] right_border
    
    # ordered sequence of path points on the center of the track
    geometry_msgs/Pose2D[] waypoints
    
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
    MSG: tuw_vehicle_msgs/TrackMarking
    # single marking on the track
    
    # position of the marking in space, as well as normal angle along the racetrack path
    geometry_msgs/Pose2D pose
    
    # type of track marking
    uint8 type
    
    uint8 TRACK_MARKING_TYPE_UNKNOWN = 0
    uint8 TRACK_MARKING_TYPE_LEFT = 1
    uint8 TRACK_MARKING_TYPE_RIGHT = 2
    uint8 TRACK_MARKING_TYPE_START_STOP = 4
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Track(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_border !== undefined) {
      resolved.left_border = new Array(msg.left_border.length);
      for (let i = 0; i < resolved.left_border.length; ++i) {
        resolved.left_border[i] = TrackMarking.Resolve(msg.left_border[i]);
      }
    }
    else {
      resolved.left_border = []
    }

    if (msg.right_border !== undefined) {
      resolved.right_border = new Array(msg.right_border.length);
      for (let i = 0; i < resolved.right_border.length; ++i) {
        resolved.right_border[i] = TrackMarking.Resolve(msg.right_border[i]);
      }
    }
    else {
      resolved.right_border = []
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = geometry_msgs.msg.Pose2D.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    return resolved;
    }
};

module.exports = Track;
