// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Vertex = require('./Vertex.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Graph {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.origin = null;
      this.vertices = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('origin')) {
        this.origin = initObj.origin
      }
      else {
        this.origin = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('vertices')) {
        this.vertices = initObj.vertices
      }
      else {
        this.vertices = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Graph
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [origin]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.origin, buffer, bufferOffset);
    // Serialize message field [vertices]
    // Serialize the length for message field [vertices]
    bufferOffset = _serializer.uint32(obj.vertices.length, buffer, bufferOffset);
    obj.vertices.forEach((val) => {
      bufferOffset = Vertex.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Graph
    let len;
    let data = new Graph(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [origin]
    data.origin = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [vertices]
    // Deserialize array length for message field [vertices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vertices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vertices[i] = Vertex.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.vertices.forEach((val) => {
      length += Vertex.getMessageSize(val);
    });
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/Graph';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d3cacdc216cb72e58eac668547de52b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## This message is used to transport a graph between two nodes.
    ## Each vertex has a set of points and a width describing the
    ## shape of it and additionally successors and predecessors
    ## to describe the overall structure of the graph 
    ##
    ## Remark for the TUW_Multi_Robot_Router
    ## !! all vertices have to be sorted by id
    ## !! every id must be present...
    #################################################################
    
    Header header               # Header for Timestamp and Id
    geometry_msgs/Pose origin   # The origin of the map (respectively: offset (the map is moved))
    Vertex[] vertices           # The vertices in the graph (in pixels)
    
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
    MSG: tuw_multi_robot_msgs/Vertex
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
     
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Graph(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.origin !== undefined) {
      resolved.origin = geometry_msgs.msg.Pose.Resolve(msg.origin)
    }
    else {
      resolved.origin = new geometry_msgs.msg.Pose()
    }

    if (msg.vertices !== undefined) {
      resolved.vertices = new Array(msg.vertices.length);
      for (let i = 0; i < resolved.vertices.length; ++i) {
        resolved.vertices[i] = Vertex.Resolve(msg.vertices[i]);
      }
    }
    else {
      resolved.vertices = []
    }

    return resolved;
    }
};

module.exports = Graph;
