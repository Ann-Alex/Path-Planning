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

class Vertex {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.valid = null;
      this.path = null;
      this.weight = null;
      this.width = null;
      this.successors = null;
      this.predecessors = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = [];
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('successors')) {
        this.successors = initObj.successors
      }
      else {
        this.successors = [];
      }
      if (initObj.hasOwnProperty('predecessors')) {
        this.predecessors = initObj.predecessors
      }
      else {
        this.predecessors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vertex
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [path]
    // Serialize the length for message field [path]
    bufferOffset = _serializer.uint32(obj.path.length, buffer, bufferOffset);
    obj.path.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [weight]
    bufferOffset = _serializer.uint32(obj.weight, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [successors]
    bufferOffset = _arraySerializer.uint32(obj.successors, buffer, bufferOffset, null);
    // Serialize message field [predecessors]
    bufferOffset = _arraySerializer.uint32(obj.predecessors, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vertex
    let len;
    let data = new Vertex(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [path]
    // Deserialize array length for message field [path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [weight]
    data.weight = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [successors]
    data.successors = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [predecessors]
    data.predecessors = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.path.length;
    length += 4 * object.successors.length;
    length += 4 * object.predecessors.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/Vertex';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd4a3cd6c3c626262c4d30c812a2922e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## A single vertex in a graph 
    ## Each vertex of the same graph must have a unique id. 
    ## Successors and Predecessors must have a common start or end
    ## point 
    #################################################################
    uint32 id                   # Vertex id
    bool valid                  # true if it can be used for planning
    geometry_msgs/Point[] path  # points describing a path from the vertex start to the vertex endpoint
                                #    the first point in the array reprecents the start and the last the endpoint
                                #    this points can also be used by the vehciles local path following algorithm 
    uint32 weight               # the weight of the vertex (e.g. length of the segment)
    float32 width               # fee space next to the vertex
    uint32[] successors         # edges to successors
    uint32[] predecessors       # edges to predecessor
     
    
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
    const resolved = new Vertex(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    if (msg.path !== undefined) {
      resolved.path = new Array(msg.path.length);
      for (let i = 0; i < resolved.path.length; ++i) {
        resolved.path[i] = geometry_msgs.msg.Point.Resolve(msg.path[i]);
      }
    }
    else {
      resolved.path = []
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.successors !== undefined) {
      resolved.successors = msg.successors;
    }
    else {
      resolved.successors = []
    }

    if (msg.predecessors !== undefined) {
      resolved.predecessors = msg.predecessors;
    }
    else {
      resolved.predecessors = []
    }

    return resolved;
    }
};

module.exports = Vertex;
