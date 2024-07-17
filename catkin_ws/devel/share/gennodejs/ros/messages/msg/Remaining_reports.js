// Auto-generated. Do not edit!

// (in-package messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Critical = require('./Critical.js');
let Vitals = require('./Vitals.js');
let Injury = require('./Injury.js');

//-----------------------------------------------------------

class Remaining_reports {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.critical = null;
      this.vitals = null;
      this.injury = null;
    }
    else {
      if (initObj.hasOwnProperty('critical')) {
        this.critical = initObj.critical
      }
      else {
        this.critical = new Critical();
      }
      if (initObj.hasOwnProperty('vitals')) {
        this.vitals = initObj.vitals
      }
      else {
        this.vitals = new Vitals();
      }
      if (initObj.hasOwnProperty('injury')) {
        this.injury = initObj.injury
      }
      else {
        this.injury = new Injury();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Remaining_reports
    // Serialize message field [critical]
    bufferOffset = Critical.serialize(obj.critical, buffer, bufferOffset);
    // Serialize message field [vitals]
    bufferOffset = Vitals.serialize(obj.vitals, buffer, bufferOffset);
    // Serialize message field [injury]
    bufferOffset = Injury.serialize(obj.injury, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Remaining_reports
    let len;
    let data = new Remaining_reports(null);
    // Deserialize message field [critical]
    data.critical = Critical.deserialize(buffer, bufferOffset);
    // Deserialize message field [vitals]
    data.vitals = Vitals.deserialize(buffer, bufferOffset);
    // Deserialize message field [injury]
    data.injury = Injury.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/Remaining_reports';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd18ac92b88307708af88871aae17ed91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Remaining_reports(null);
    if (msg.critical !== undefined) {
      resolved.critical = Critical.Resolve(msg.critical)
    }
    else {
      resolved.critical = new Critical()
    }

    if (msg.vitals !== undefined) {
      resolved.vitals = Vitals.Resolve(msg.vitals)
    }
    else {
      resolved.vitals = new Vitals()
    }

    if (msg.injury !== undefined) {
      resolved.injury = Injury.Resolve(msg.injury)
    }
    else {
      resolved.injury = new Injury()
    }

    return resolved;
    }
};

module.exports = Remaining_reports;
