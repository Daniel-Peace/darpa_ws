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

class Injury {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trauma_head = null;
      this.trauma_torso = null;
      this.trauma_lower_ext = null;
      this.trauma_upper_ext = null;
      this.trauma_ocular = null;
      this.alertness_ocular = null;
      this.alertness_verbal = null;
      this.alertness_motor = null;
    }
    else {
      if (initObj.hasOwnProperty('trauma_head')) {
        this.trauma_head = initObj.trauma_head
      }
      else {
        this.trauma_head = 0;
      }
      if (initObj.hasOwnProperty('trauma_torso')) {
        this.trauma_torso = initObj.trauma_torso
      }
      else {
        this.trauma_torso = 0;
      }
      if (initObj.hasOwnProperty('trauma_lower_ext')) {
        this.trauma_lower_ext = initObj.trauma_lower_ext
      }
      else {
        this.trauma_lower_ext = 0;
      }
      if (initObj.hasOwnProperty('trauma_upper_ext')) {
        this.trauma_upper_ext = initObj.trauma_upper_ext
      }
      else {
        this.trauma_upper_ext = 0;
      }
      if (initObj.hasOwnProperty('trauma_ocular')) {
        this.trauma_ocular = initObj.trauma_ocular
      }
      else {
        this.trauma_ocular = 0;
      }
      if (initObj.hasOwnProperty('alertness_ocular')) {
        this.alertness_ocular = initObj.alertness_ocular
      }
      else {
        this.alertness_ocular = 0;
      }
      if (initObj.hasOwnProperty('alertness_verbal')) {
        this.alertness_verbal = initObj.alertness_verbal
      }
      else {
        this.alertness_verbal = 0;
      }
      if (initObj.hasOwnProperty('alertness_motor')) {
        this.alertness_motor = initObj.alertness_motor
      }
      else {
        this.alertness_motor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Injury
    // Serialize message field [trauma_head]
    bufferOffset = _serializer.int32(obj.trauma_head, buffer, bufferOffset);
    // Serialize message field [trauma_torso]
    bufferOffset = _serializer.int32(obj.trauma_torso, buffer, bufferOffset);
    // Serialize message field [trauma_lower_ext]
    bufferOffset = _serializer.int32(obj.trauma_lower_ext, buffer, bufferOffset);
    // Serialize message field [trauma_upper_ext]
    bufferOffset = _serializer.int32(obj.trauma_upper_ext, buffer, bufferOffset);
    // Serialize message field [trauma_ocular]
    bufferOffset = _serializer.int32(obj.trauma_ocular, buffer, bufferOffset);
    // Serialize message field [alertness_ocular]
    bufferOffset = _serializer.int32(obj.alertness_ocular, buffer, bufferOffset);
    // Serialize message field [alertness_verbal]
    bufferOffset = _serializer.int32(obj.alertness_verbal, buffer, bufferOffset);
    // Serialize message field [alertness_motor]
    bufferOffset = _serializer.int32(obj.alertness_motor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Injury
    let len;
    let data = new Injury(null);
    // Deserialize message field [trauma_head]
    data.trauma_head = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trauma_torso]
    data.trauma_torso = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trauma_lower_ext]
    data.trauma_lower_ext = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trauma_upper_ext]
    data.trauma_upper_ext = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trauma_ocular]
    data.trauma_ocular = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alertness_ocular]
    data.alertness_ocular = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alertness_verbal]
    data.alertness_verbal = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alertness_motor]
    data.alertness_motor = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/Injury';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea36f64e92a1aa168772ef9085fb9507';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Injury(null);
    if (msg.trauma_head !== undefined) {
      resolved.trauma_head = msg.trauma_head;
    }
    else {
      resolved.trauma_head = 0
    }

    if (msg.trauma_torso !== undefined) {
      resolved.trauma_torso = msg.trauma_torso;
    }
    else {
      resolved.trauma_torso = 0
    }

    if (msg.trauma_lower_ext !== undefined) {
      resolved.trauma_lower_ext = msg.trauma_lower_ext;
    }
    else {
      resolved.trauma_lower_ext = 0
    }

    if (msg.trauma_upper_ext !== undefined) {
      resolved.trauma_upper_ext = msg.trauma_upper_ext;
    }
    else {
      resolved.trauma_upper_ext = 0
    }

    if (msg.trauma_ocular !== undefined) {
      resolved.trauma_ocular = msg.trauma_ocular;
    }
    else {
      resolved.trauma_ocular = 0
    }

    if (msg.alertness_ocular !== undefined) {
      resolved.alertness_ocular = msg.alertness_ocular;
    }
    else {
      resolved.alertness_ocular = 0
    }

    if (msg.alertness_verbal !== undefined) {
      resolved.alertness_verbal = msg.alertness_verbal;
    }
    else {
      resolved.alertness_verbal = 0
    }

    if (msg.alertness_motor !== undefined) {
      resolved.alertness_motor = msg.alertness_motor;
    }
    else {
      resolved.alertness_motor = 0
    }

    return resolved;
    }
};

module.exports = Injury;
