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

class Vitals {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.heart = null;
      this.respiratory = null;
    }
    else {
      if (initObj.hasOwnProperty('heart')) {
        this.heart = initObj.heart
      }
      else {
        this.heart = 0;
      }
      if (initObj.hasOwnProperty('respiratory')) {
        this.respiratory = initObj.respiratory
      }
      else {
        this.respiratory = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vitals
    // Serialize message field [heart]
    bufferOffset = _serializer.int32(obj.heart, buffer, bufferOffset);
    // Serialize message field [respiratory]
    bufferOffset = _serializer.int32(obj.respiratory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vitals
    let len;
    let data = new Vitals(null);
    // Deserialize message field [heart]
    data.heart = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [respiratory]
    data.respiratory = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/Vitals';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d419d9c4365749288a9e6c5033a7520';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 heart
    int32 respiratory
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Vitals(null);
    if (msg.heart !== undefined) {
      resolved.heart = msg.heart;
    }
    else {
      resolved.heart = 0
    }

    if (msg.respiratory !== undefined) {
      resolved.respiratory = msg.respiratory;
    }
    else {
      resolved.respiratory = 0
    }

    return resolved;
    }
};

module.exports = Vitals;
