# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tuw_multi_robot_msgs/RouterStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RouterStatus(genpy.Message):
  _md5sum = "155759b83cd058836f14589c98203bee"
  _type = "tuw_multi_robot_msgs/RouterStatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#################################################################
## A message to publish the status of the last route 
## generation
#################################################################

int32 id # the unique id of the new plan
bool success # true if a routing table was found to the given scenario
string[] missing_robots # if the plan fails because of absent robots, these robots are listed here
int32 duration # the time until a routing table was found
int32 overall_path_length # the overall path length in the routing table (calculated using weights)
int32 longest_path_length # the longest path length in a routing table (calculated using weights)
int32 priority_scheduling_attemps # shows how often robot priorities are exchanged
int32 speed_scheduling_attemps # shows how many robots speed was reduced during planning"""
  __slots__ = ['id','success','missing_robots','duration','overall_path_length','longest_path_length','priority_scheduling_attemps','speed_scheduling_attemps']
  _slot_types = ['int32','bool','string[]','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,success,missing_robots,duration,overall_path_length,longest_path_length,priority_scheduling_attemps,speed_scheduling_attemps

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RouterStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.success is None:
        self.success = False
      if self.missing_robots is None:
        self.missing_robots = []
      if self.duration is None:
        self.duration = 0
      if self.overall_path_length is None:
        self.overall_path_length = 0
      if self.longest_path_length is None:
        self.longest_path_length = 0
      if self.priority_scheduling_attemps is None:
        self.priority_scheduling_attemps = 0
      if self.speed_scheduling_attemps is None:
        self.speed_scheduling_attemps = 0
    else:
      self.id = 0
      self.success = False
      self.missing_robots = []
      self.duration = 0
      self.overall_path_length = 0
      self.longest_path_length = 0
      self.priority_scheduling_attemps = 0
      self.speed_scheduling_attemps = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_iB().pack(_x.id, _x.success))
      length = len(self.missing_robots)
      buff.write(_struct_I.pack(length))
      for val1 in self.missing_robots:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      _x = self
      buff.write(_get_struct_5i().pack(_x.duration, _x.overall_path_length, _x.longest_path_length, _x.priority_scheduling_attemps, _x.speed_scheduling_attemps))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 5
      (_x.id, _x.success,) = _get_struct_iB().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.missing_robots = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.missing_robots.append(val1)
      _x = self
      start = end
      end += 20
      (_x.duration, _x.overall_path_length, _x.longest_path_length, _x.priority_scheduling_attemps, _x.speed_scheduling_attemps,) = _get_struct_5i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_iB().pack(_x.id, _x.success))
      length = len(self.missing_robots)
      buff.write(_struct_I.pack(length))
      for val1 in self.missing_robots:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      _x = self
      buff.write(_get_struct_5i().pack(_x.duration, _x.overall_path_length, _x.longest_path_length, _x.priority_scheduling_attemps, _x.speed_scheduling_attemps))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 5
      (_x.id, _x.success,) = _get_struct_iB().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.missing_robots = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.missing_robots.append(val1)
      _x = self
      start = end
      end += 20
      (_x.duration, _x.overall_path_length, _x.longest_path_length, _x.priority_scheduling_attemps, _x.speed_scheduling_attemps,) = _get_struct_5i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5i = None
def _get_struct_5i():
    global _struct_5i
    if _struct_5i is None:
        _struct_5i = struct.Struct("<5i")
    return _struct_5i
_struct_iB = None
def _get_struct_iB():
    global _struct_iB
    if _struct_iB is None:
        _struct_iB = struct.Struct("<iB")
    return _struct_iB
