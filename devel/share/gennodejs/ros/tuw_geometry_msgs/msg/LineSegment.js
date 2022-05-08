// Auto-generated. Do not edit!

// (in-package tuw_geometry_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LineSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.p0 = null;
      this.p1 = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('p0')) {
        this.p0 = initObj.p0
      }
      else {
        this.p0 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineSegment
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [p0]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.p0, buffer, bufferOffset);
    // Serialize message field [p1]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.p1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineSegment
    let len;
    let data = new LineSegment(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [p0]
    data.p0 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [p1]
    data.p1 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_geometry_msgs/LineSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8813871a1413bea6f3b9d3b1470ee5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id                     # Segment id
    
    geometry_msgs/Point p0        # linesegment endpoint 0
    geometry_msgs/Point p1        # linesegment endpoint 1
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LineSegment(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.p0 !== undefined) {
      resolved.p0 = geometry_msgs.msg.Point.Resolve(msg.p0)
    }
    else {
      resolved.p0 = new geometry_msgs.msg.Point()
    }

    if (msg.p1 !== undefined) {
      resolved.p1 = geometry_msgs.msg.Point.Resolve(msg.p1)
    }
    else {
      resolved.p1 = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = LineSegment;
