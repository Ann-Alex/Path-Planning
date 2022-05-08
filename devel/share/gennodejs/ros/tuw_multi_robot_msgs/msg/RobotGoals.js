// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RobotGoals {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
      this.destinations = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('destinations')) {
        this.destinations = initObj.destinations
      }
      else {
        this.destinations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotGoals
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [destinations]
    // Serialize the length for message field [destinations]
    bufferOffset = _serializer.uint32(obj.destinations.length, buffer, bufferOffset);
    obj.destinations.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotGoals
    let len;
    let data = new RobotGoals(null);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [destinations]
    // Deserialize array length for message field [destinations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.destinations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.destinations[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robot_name);
    length += 56 * object.destinations.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/RobotGoals';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8f37aa499812d58bbe5ed4a6053d837';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## used to describe a set of destinations for a robot
    ## robot_name is used as id and often used as namespace for topics
    #################################################################
    
    string robot_name                   # the name of the robot
    geometry_msgs/Pose[] destinations   # Describes a set of destinations, where the last one is the final goal of the trip
                                        # if there are more than one destinations the first one is the start pose
                                        # else the current pose of the robot is used as start
     
     
    
    
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
    const resolved = new RobotGoals(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.destinations !== undefined) {
      resolved.destinations = new Array(msg.destinations.length);
      for (let i = 0; i < resolved.destinations.length; ++i) {
        resolved.destinations[i] = geometry_msgs.msg.Pose.Resolve(msg.destinations[i]);
      }
    }
    else {
      resolved.destinations = []
    }

    return resolved;
    }
};

module.exports = RobotGoals;
