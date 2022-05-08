// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Station = require('../msg/Station.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class StationManagerStationProtocolRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request = null;
      this.station = null;
    }
    else {
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = '';
      }
      if (initObj.hasOwnProperty('station')) {
        this.station = initObj.station
      }
      else {
        this.station = new Station();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StationManagerStationProtocolRequest
    // Serialize message field [request]
    bufferOffset = _serializer.string(obj.request, buffer, bufferOffset);
    // Serialize message field [station]
    bufferOffset = Station.serialize(obj.station, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StationManagerStationProtocolRequest
    let len;
    let data = new StationManagerStationProtocolRequest(null);
    // Deserialize message field [request]
    data.request = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [station]
    data.station = Station.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.request);
    length += Station.getMessageSize(object.station);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tuw_multi_robot_msgs/StationManagerStationProtocolRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b92b8080350b8c5cbe5086e70339abf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## Protocol to Send and Receive Control Commands
    #################################################################
    
    string                          request         # request string
    tuw_multi_robot_msgs/Station    station         # station message
    
    # request constants
    string APPEND = append                          # request to append sent station
    string REMOVE = remove                          # request to remove sent station
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StationManagerStationProtocolRequest(null);
    if (msg.request !== undefined) {
      resolved.request = msg.request;
    }
    else {
      resolved.request = ''
    }

    if (msg.station !== undefined) {
      resolved.station = Station.Resolve(msg.station)
    }
    else {
      resolved.station = new Station()
    }

    return resolved;
    }
};

// Constants for message
StationManagerStationProtocolRequest.Constants = {
  APPEND: 'append                          # request to append sent station',
  REMOVE: 'remove                          # request to remove sent station',
}

class StationManagerStationProtocolResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StationManagerStationProtocolResponse
    // Serialize message field [response]
    bufferOffset = _serializer.string(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StationManagerStationProtocolResponse
    let len;
    let data = new StationManagerStationProtocolResponse(null);
    // Deserialize message field [response]
    data.response = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.response);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tuw_multi_robot_msgs/StationManagerStationProtocolResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '489f190c203b039f852a57035560eed4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string                          response        # response string
    
    # response constants
    string EXECUTED = executed                      # response if the request could be executed successful
    string FAILED = failed                          # response if the request could not be executed successful
    string ERROR = error                            # response if the request is unknown
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StationManagerStationProtocolResponse(null);
    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = ''
    }

    return resolved;
    }
};

// Constants for message
StationManagerStationProtocolResponse.Constants = {
  EXECUTED: 'executed                      # response if the request could be executed successful',
  FAILED: 'failed                          # response if the request could not be executed successful',
  ERROR: 'error                            # response if the request is unknown',
}

module.exports = {
  Request: StationManagerStationProtocolRequest,
  Response: StationManagerStationProtocolResponse,
  md5sum() { return '1f5e895558b51eb5ebcc012fba03f68a'; },
  datatype() { return 'tuw_multi_robot_msgs/StationManagerStationProtocol'; }
};
