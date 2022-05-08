// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StationManagerControlProtocolRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request = null;
      this.addition = null;
    }
    else {
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = '';
      }
      if (initObj.hasOwnProperty('addition')) {
        this.addition = initObj.addition
      }
      else {
        this.addition = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StationManagerControlProtocolRequest
    // Serialize message field [request]
    bufferOffset = _serializer.string(obj.request, buffer, bufferOffset);
    // Serialize message field [addition]
    bufferOffset = _serializer.string(obj.addition, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StationManagerControlProtocolRequest
    let len;
    let data = new StationManagerControlProtocolRequest(null);
    // Deserialize message field [request]
    data.request = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [addition]
    data.addition = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.request);
    length += _getByteLength(object.addition);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tuw_multi_robot_msgs/StationManagerControlProtocolRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bebebb77beb0b95affce67ed1687cfd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## Protocol to Send and Receive Station Management Commands
    #################################################################
    
    string      request         # request
    string      addition        # addition, holds information to the request
    
    # request constants
    string LOAD = load          # command to load a file (addition is the file path)
    string SAVE = save          # command to save a file (addition is the file path)
    string UPDATE = update      # command to define update policy
    
    string ONCE = once          # addition to publish data once on request
    string CHANGE = change      # addition to publish data on ever change
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StationManagerControlProtocolRequest(null);
    if (msg.request !== undefined) {
      resolved.request = msg.request;
    }
    else {
      resolved.request = ''
    }

    if (msg.addition !== undefined) {
      resolved.addition = msg.addition;
    }
    else {
      resolved.addition = ''
    }

    return resolved;
    }
};

// Constants for message
StationManagerControlProtocolRequest.Constants = {
  LOAD: 'load          # command to load a file (addition is the file path)',
  SAVE: 'save          # command to save a file (addition is the file path)',
  UPDATE: 'update      # command to define update policy',
  ONCE: 'once          # addition to publish data once on request',
  CHANGE: 'change      # addition to publish data on ever change',
}

class StationManagerControlProtocolResponse {
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
    // Serializes a message object of type StationManagerControlProtocolResponse
    // Serialize message field [response]
    bufferOffset = _serializer.string(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StationManagerControlProtocolResponse
    let len;
    let data = new StationManagerControlProtocolResponse(null);
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
    return 'tuw_multi_robot_msgs/StationManagerControlProtocolResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85eabb3c3ffb858528366f8893fa5ef2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string      response        # response string
    
    # response constants
    string EXECUTED = executed  # response if the request could be executed successful
    string FAILED = failed      # response if the request could not be executed successful
    string ERROR = error        # response if the request is unknown
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StationManagerControlProtocolResponse(null);
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
StationManagerControlProtocolResponse.Constants = {
  EXECUTED: 'executed  # response if the request could be executed successful',
  FAILED: 'failed      # response if the request could not be executed successful',
  ERROR: 'error        # response if the request is unknown',
}

module.exports = {
  Request: StationManagerControlProtocolRequest,
  Response: StationManagerControlProtocolResponse,
  md5sum() { return '4c3ba04d64c7726241cb44a482e7d069'; },
  datatype() { return 'tuw_multi_robot_msgs/StationManagerControlProtocol'; }
};
