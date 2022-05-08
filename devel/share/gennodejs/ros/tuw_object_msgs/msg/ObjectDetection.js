// Auto-generated. Do not edit!

// (in-package tuw_object_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectWithCovariance = require('./ObjectWithCovariance.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ObjectDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.distance_min = null;
      this.distance_max = null;
      this.distance_max_id = null;
      this.view_direction = null;
      this.fov_horizontal = null;
      this.fov_vertical = null;
      this.type = null;
      this.objects = null;
      this.sensor_type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('distance_min')) {
        this.distance_min = initObj.distance_min
      }
      else {
        this.distance_min = 0.0;
      }
      if (initObj.hasOwnProperty('distance_max')) {
        this.distance_max = initObj.distance_max
      }
      else {
        this.distance_max = 0.0;
      }
      if (initObj.hasOwnProperty('distance_max_id')) {
        this.distance_max_id = initObj.distance_max_id
      }
      else {
        this.distance_max_id = 0.0;
      }
      if (initObj.hasOwnProperty('view_direction')) {
        this.view_direction = initObj.view_direction
      }
      else {
        this.view_direction = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('fov_horizontal')) {
        this.fov_horizontal = initObj.fov_horizontal
      }
      else {
        this.fov_horizontal = 0.0;
      }
      if (initObj.hasOwnProperty('fov_vertical')) {
        this.fov_vertical = initObj.fov_vertical
      }
      else {
        this.fov_vertical = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
      if (initObj.hasOwnProperty('sensor_type')) {
        this.sensor_type = initObj.sensor_type
      }
      else {
        this.sensor_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectDetection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [distance_min]
    bufferOffset = _serializer.float32(obj.distance_min, buffer, bufferOffset);
    // Serialize message field [distance_max]
    bufferOffset = _serializer.float32(obj.distance_max, buffer, bufferOffset);
    // Serialize message field [distance_max_id]
    bufferOffset = _serializer.float32(obj.distance_max_id, buffer, bufferOffset);
    // Serialize message field [view_direction]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.view_direction, buffer, bufferOffset);
    // Serialize message field [fov_horizontal]
    bufferOffset = _serializer.float32(obj.fov_horizontal, buffer, bufferOffset);
    // Serialize message field [fov_vertical]
    bufferOffset = _serializer.float32(obj.fov_vertical, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = ObjectWithCovariance.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sensor_type]
    bufferOffset = _serializer.string(obj.sensor_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectDetection
    let len;
    let data = new ObjectDetection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance_min]
    data.distance_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_max]
    data.distance_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_max_id]
    data.distance_max_id = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [view_direction]
    data.view_direction = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [fov_horizontal]
    data.fov_horizontal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fov_vertical]
    data.fov_vertical = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = ObjectWithCovariance.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sensor_type]
    data.sensor_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.type);
    object.objects.forEach((val) => {
      length += ObjectWithCovariance.getMessageSize(val);
    });
    length += _getByteLength(object.sensor_type);
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_object_msgs/ObjectDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cea12636c449cb6bd42fd7019d49b395';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This expresses a object detection
    Header header                                 # timestamp in the header is the acquisition time and frame
    
    float32 distance_min                          # distance minimum range value [m]
    float32 distance_max                          # distance maximum range value [m]
    float32 distance_max_id                       # distance maximum range value to detect id [m]
    
    geometry_msgs/Quaternion view_direction       # view direction
    float32 fov_horizontal                        # field of view horizontal [rad]
    float32 fov_vertical                          # field of view vertical [rad]
    
    string   type                                 # object type used (person, obstacle, ...)
    
    ObjectWithCovariance[] objects                # detected objects (with covariance)
    
    string          sensor_type                      # Sensor / detector type, see example constants below.
    
    # object type constants
    string OBJECT_TYPE_PERSON = person
    string OBJECT_TYPE_OBSTACLE = obstacle
    string OBJECT_TYPE_TRAFFIC_CONE = traffic_cone
    string OBJECT_TYPE_DOOR = door
    
    # sensor type constants
    string          SENSOR_TYPE_GENERIC_LASER_2D = laser2d
    string          SENSOR_TYPE_GENERIC_LASER_3D = laser3d
    string          SENSOR_TYPE_GENERIC_MONOCULAR_VISION = mono
    string          SENSOR_TYPE_GENERIC_STEREO_VISION = stereo
    string          SENSOR_TYPE_GENERIC_RGBD = rgbd
    
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: tuw_object_msgs/ObjectWithCovariance
    # This expresses a object in free space with uncertainty.
    
    Object object
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    
    float64[] covariance_pose   # pose covariance if it exists it will be 3x3 or 6x6
    float64[] covariance_twist  # twist covariance if it exists it will be 3x3 or 6x6
    float64[] correlation       # correlation between pose and twist if it exists it will be 3x3 or 6x6
    ================================================================================
    MSG: tuw_object_msgs/Object
    # This expresses a object in a 3D space
    int32[] ids                  # possible ids of the detected object (empty if no id could be identified/assigned)
    int32   shape                # shape type (possible types are listed below)
    float64[] shape_variables    # variables correspoding to the shape of the object (possible types are listed below)
    float64[] ids_confidence     # confidence of the possible ids in [0, 1]
    geometry_msgs/Pose pose      # pose of the detected object
    geometry_msgs/Twist twist    # twist of the detected object
    
    # SHAPE_TYPE                      # SHAPE_VARIABLES
    # ====================================================
    int32 SHAPE_UNKOWN           = 0  # []
    int32 SHAPE_POINT            = 1  # []
    int32 SHAPE_CIRCLE           = 2  # [radius]
    int32 SHAPE_ELLIPSE          = 3  # [radius1, radius2]
    int32 SHAPE_SQUARE           = 4  # [width]
    int32 SHAPE_RECTANGLE        = 5  # [length, width]
    int32 SHAPE_HULL             = 6  # [p0, p1, p2, ...]
    int32 SHAPE_LINE             = 7  # [] or [length] 
    
    int32 SHAPE_SPHERE           = 102
    int32 SHAPE_ELLIPSOID        = 103
    int32 SHAPE_CUBE             = 104
    int32 SHAPE_BOX              = 105
    int32 SHAPE_MESH             = 106
    
    int32 SHAPE_TRAFFIC_CONE     = 201 # [radius, color(1 = blue, 2 = yellow, 3 = red)] 
    int32 SHAPE_DOOR             = 202 # [width, height, opening angle (0=closed), nr of door leafs, clockwise (0) counterclockwise (1)]
    int32 SHAPE_MAP_DOOR         = 212 # for doors already mapped, same parameters as usual door
    int32 SHAPE_PERSON           = 203
    int32 SHAPE_VEHICLE          = 204
    int32 SHAPE_FIDUCIAL         = 205
    int32 SHAPE_CONE             = 206 # [radius, height]
    
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
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new ObjectDetection(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.distance_min !== undefined) {
      resolved.distance_min = msg.distance_min;
    }
    else {
      resolved.distance_min = 0.0
    }

    if (msg.distance_max !== undefined) {
      resolved.distance_max = msg.distance_max;
    }
    else {
      resolved.distance_max = 0.0
    }

    if (msg.distance_max_id !== undefined) {
      resolved.distance_max_id = msg.distance_max_id;
    }
    else {
      resolved.distance_max_id = 0.0
    }

    if (msg.view_direction !== undefined) {
      resolved.view_direction = geometry_msgs.msg.Quaternion.Resolve(msg.view_direction)
    }
    else {
      resolved.view_direction = new geometry_msgs.msg.Quaternion()
    }

    if (msg.fov_horizontal !== undefined) {
      resolved.fov_horizontal = msg.fov_horizontal;
    }
    else {
      resolved.fov_horizontal = 0.0
    }

    if (msg.fov_vertical !== undefined) {
      resolved.fov_vertical = msg.fov_vertical;
    }
    else {
      resolved.fov_vertical = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = ObjectWithCovariance.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    if (msg.sensor_type !== undefined) {
      resolved.sensor_type = msg.sensor_type;
    }
    else {
      resolved.sensor_type = ''
    }

    return resolved;
    }
};

// Constants for message
ObjectDetection.Constants = {
  OBJECT_TYPE_PERSON: 'person',
  OBJECT_TYPE_OBSTACLE: 'obstacle',
  OBJECT_TYPE_TRAFFIC_CONE: 'traffic_cone',
  OBJECT_TYPE_DOOR: 'door',
  SENSOR_TYPE_GENERIC_LASER_2D: 'laser2d',
  SENSOR_TYPE_GENERIC_LASER_3D: 'laser3d',
  SENSOR_TYPE_GENERIC_MONOCULAR_VISION: 'mono',
  SENSOR_TYPE_GENERIC_STEREO_VISION: 'stereo',
  SENSOR_TYPE_GENERIC_RGBD: 'rgbd',
}

module.exports = ObjectDetection;
