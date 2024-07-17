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

class Injury_report {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.casualty_id = null;
      this.team = null;
      this.system = null;
      this.type = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('casualty_id')) {
        this.casualty_id = initObj.casualty_id
      }
      else {
        this.casualty_id = 0;
      }
      if (initObj.hasOwnProperty('team')) {
        this.team = initObj.team
      }
      else {
        this.team = '';
      }
      if (initObj.hasOwnProperty('system')) {
        this.system = initObj.system
      }
      else {
        this.system = '';
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Injury_report
    // Serialize message field [casualty_id]
    bufferOffset = _serializer.int32(obj.casualty_id, buffer, bufferOffset);
    // Serialize message field [team]
    bufferOffset = _serializer.string(obj.team, buffer, bufferOffset);
    // Serialize message field [system]
    bufferOffset = _serializer.string(obj.system, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Injury_report
    let len;
    let data = new Injury_report(null);
    // Deserialize message field [casualty_id]
    data.casualty_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [team]
    data.team = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [system]
    data.system = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.team);
    length += _getByteLength(object.system);
    length += _getByteLength(object.type);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/Injury_report';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ec9446ca1a98dc79ca9f3632cd565bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   casualty_id
    string  team
    string  system
    string  type
    int32   value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Injury_report(null);
    if (msg.casualty_id !== undefined) {
      resolved.casualty_id = msg.casualty_id;
    }
    else {
      resolved.casualty_id = 0
    }

    if (msg.team !== undefined) {
      resolved.team = msg.team;
    }
    else {
      resolved.team = ''
    }

    if (msg.system !== undefined) {
      resolved.system = msg.system;
    }
    else {
      resolved.system = ''
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

    return resolved;
    }
};

module.exports = Injury_report;
