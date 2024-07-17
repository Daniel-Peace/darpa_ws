// Auto-generated. Do not edit!

// (in-package messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Vitals_report_response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.run = null;
      this.team = null;
      this.user = null;
      this.system = null;
      this.clock = null;
      this.report_id = null;
      this.report_timestamp = null;
      this.reports_remaining = null;
      this.report_status = null;
      this.casualty_id = null;
      this.type = null;
      this.value = null;
      this.time_ago = null;
    }
    else {
      if (initObj.hasOwnProperty('run')) {
        this.run = initObj.run
      }
      else {
        this.run = '';
      }
      if (initObj.hasOwnProperty('team')) {
        this.team = initObj.team
      }
      else {
        this.team = '';
      }
      if (initObj.hasOwnProperty('user')) {
        this.user = initObj.user
      }
      else {
        this.user = '';
      }
      if (initObj.hasOwnProperty('system')) {
        this.system = initObj.system
      }
      else {
        this.system = '';
      }
      if (initObj.hasOwnProperty('clock')) {
        this.clock = initObj.clock
      }
      else {
        this.clock = 0.0;
      }
      if (initObj.hasOwnProperty('report_id')) {
        this.report_id = initObj.report_id
      }
      else {
        this.report_id = '';
      }
      if (initObj.hasOwnProperty('report_timestamp')) {
        this.report_timestamp = initObj.report_timestamp
      }
      else {
        this.report_timestamp = '';
      }
      if (initObj.hasOwnProperty('reports_remaining')) {
        this.reports_remaining = initObj.reports_remaining
      }
      else {
        this.reports_remaining = 0;
      }
      if (initObj.hasOwnProperty('report_status')) {
        this.report_status = initObj.report_status
      }
      else {
        this.report_status = '';
      }
      if (initObj.hasOwnProperty('casualty_id')) {
        this.casualty_id = initObj.casualty_id
      }
      else {
        this.casualty_id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('time_ago')) {
        this.time_ago = initObj.time_ago
      }
      else {
        this.time_ago = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vitals_report_response
    // Serialize message field [run]
    bufferOffset = _serializer.string(obj.run, buffer, bufferOffset);
    // Serialize message field [team]
    bufferOffset = _serializer.string(obj.team, buffer, bufferOffset);
    // Serialize message field [user]
    bufferOffset = _serializer.string(obj.user, buffer, bufferOffset);
    // Serialize message field [system]
    bufferOffset = _serializer.string(obj.system, buffer, bufferOffset);
    // Serialize message field [clock]
    bufferOffset = _serializer.float64(obj.clock, buffer, bufferOffset);
    // Serialize message field [report_id]
    bufferOffset = _serializer.string(obj.report_id, buffer, bufferOffset);
    // Serialize message field [report_timestamp]
    bufferOffset = _serializer.string(obj.report_timestamp, buffer, bufferOffset);
    // Serialize message field [reports_remaining]
    bufferOffset = _serializer.int32(obj.reports_remaining, buffer, bufferOffset);
    // Serialize message field [report_status]
    bufferOffset = _serializer.string(obj.report_status, buffer, bufferOffset);
    // Serialize message field [casualty_id]
    bufferOffset = _serializer.int32(obj.casualty_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    // Serialize message field [time_ago]
    bufferOffset = _serializer.int32(obj.time_ago, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vitals_report_response
    let len;
    let data = new Vitals_report_response(null);
    // Deserialize message field [run]
    data.run = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [team]
    data.team = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [user]
    data.user = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [system]
    data.system = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [clock]
    data.clock = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [report_id]
    data.report_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [report_timestamp]
    data.report_timestamp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reports_remaining]
    data.reports_remaining = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [report_status]
    data.report_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [casualty_id]
    data.casualty_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [time_ago]
    data.time_ago = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.run);
    length += _getByteLength(object.team);
    length += _getByteLength(object.user);
    length += _getByteLength(object.system);
    length += _getByteLength(object.report_id);
    length += _getByteLength(object.report_timestamp);
    length += _getByteLength(object.report_status);
    length += _getByteLength(object.type);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/Vitals_report_response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36982e9875749000fa799fe02bb5f3fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  run
    string  team
    string  user
    string  system
    float64 clock
    string  report_id
    string  report_timestamp
    int32   reports_remaining
    string  report_status
    int32   casualty_id
    string  type
    int32   value
    int32   time_ago
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Vitals_report_response(null);
    if (msg.run !== undefined) {
      resolved.run = msg.run;
    }
    else {
      resolved.run = ''
    }

    if (msg.team !== undefined) {
      resolved.team = msg.team;
    }
    else {
      resolved.team = ''
    }

    if (msg.user !== undefined) {
      resolved.user = msg.user;
    }
    else {
      resolved.user = ''
    }

    if (msg.system !== undefined) {
      resolved.system = msg.system;
    }
    else {
      resolved.system = ''
    }

    if (msg.clock !== undefined) {
      resolved.clock = msg.clock;
    }
    else {
      resolved.clock = 0.0
    }

    if (msg.report_id !== undefined) {
      resolved.report_id = msg.report_id;
    }
    else {
      resolved.report_id = ''
    }

    if (msg.report_timestamp !== undefined) {
      resolved.report_timestamp = msg.report_timestamp;
    }
    else {
      resolved.report_timestamp = ''
    }

    if (msg.reports_remaining !== undefined) {
      resolved.reports_remaining = msg.reports_remaining;
    }
    else {
      resolved.reports_remaining = 0
    }

    if (msg.report_status !== undefined) {
      resolved.report_status = msg.report_status;
    }
    else {
      resolved.report_status = ''
    }

    if (msg.casualty_id !== undefined) {
      resolved.casualty_id = msg.casualty_id;
    }
    else {
      resolved.casualty_id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.time_ago !== undefined) {
      resolved.time_ago = msg.time_ago;
    }
    else {
      resolved.time_ago = 0
    }

    return resolved;
    }
};

module.exports = Vitals_report_response;
