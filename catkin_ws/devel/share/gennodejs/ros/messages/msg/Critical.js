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

class Critical {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hemorrhage = null;
      this.distress = null;
    }
    else {
      if (initObj.hasOwnProperty('hemorrhage')) {
        this.hemorrhage = initObj.hemorrhage
      }
      else {
        this.hemorrhage = 0;
      }
      if (initObj.hasOwnProperty('distress')) {
        this.distress = initObj.distress
      }
      else {
        this.distress = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Critical
    // Serialize message field [hemorrhage]
    bufferOffset = _serializer.int32(obj.hemorrhage, buffer, bufferOffset);
    // Serialize message field [distress]
    bufferOffset = _serializer.int32(obj.distress, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Critical
    let len;
    let data = new Critical(null);
    // Deserialize message field [hemorrhage]
    data.hemorrhage = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distress]
    data.distress = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/Critical';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b92d3e2e62f03348662932b496ff104';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   hemorrhage
    int32   distress
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Critical(null);
    if (msg.hemorrhage !== undefined) {
      resolved.hemorrhage = msg.hemorrhage;
    }
    else {
      resolved.hemorrhage = 0
    }

    if (msg.distress !== undefined) {
      resolved.distress = msg.distress;
    }
    else {
      resolved.distress = 0
    }

    return resolved;
    }
};

module.exports = Critical;
