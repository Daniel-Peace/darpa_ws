// Auto-generated. Do not edit!

// (in-package messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Remaining_reports = require('./Remaining_reports.js');

//-----------------------------------------------------------

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clock = null;
      this.team = null;
      this.user = null;
      this.remaining_reports = null;
    }
    else {
      if (initObj.hasOwnProperty('clock')) {
        this.clock = initObj.clock
      }
      else {
        this.clock = 0.0;
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
      if (initObj.hasOwnProperty('remaining_reports')) {
        this.remaining_reports = initObj.remaining_reports
      }
      else {
        this.remaining_reports = new Remaining_reports();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [clock]
    bufferOffset = _serializer.float64(obj.clock, buffer, bufferOffset);
    // Serialize message field [team]
    bufferOffset = _serializer.string(obj.team, buffer, bufferOffset);
    // Serialize message field [user]
    bufferOffset = _serializer.string(obj.user, buffer, bufferOffset);
    // Serialize message field [remaining_reports]
    bufferOffset = Remaining_reports.serialize(obj.remaining_reports, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [clock]
    data.clock = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [team]
    data.team = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [user]
    data.user = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remaining_reports]
    data.remaining_reports = Remaining_reports.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.team);
    length += _getByteLength(object.user);
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3971e6279401a5d4495111784f1454fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64             clock
    string              team
    string              user
    Remaining_reports   remaining_reports
    ================================================================================
    MSG: messages/Remaining_reports
    Critical    critical
    Vitals      vitals 
    Injury      injury
    ================================================================================
    MSG: messages/Critical
    int32   hemorrhage
    int32   distress
    ================================================================================
    MSG: messages/Vitals
    int32 heart
    int32 respiratory
    ================================================================================
    MSG: messages/Injury
    int32   trauma_head
    int32   trauma_torso
    int32   trauma_lower_ext
    int32   trauma_upper_ext
    int32   trauma_ocular
    int32   alertness_ocular
    int32   alertness_verbal
    int32   alertness_motor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Status(null);
    if (msg.clock !== undefined) {
      resolved.clock = msg.clock;
    }
    else {
      resolved.clock = 0.0
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

    if (msg.remaining_reports !== undefined) {
      resolved.remaining_reports = Remaining_reports.Resolve(msg.remaining_reports)
    }
    else {
      resolved.remaining_reports = new Remaining_reports()
    }

    return resolved;
    }
};

module.exports = Status;
