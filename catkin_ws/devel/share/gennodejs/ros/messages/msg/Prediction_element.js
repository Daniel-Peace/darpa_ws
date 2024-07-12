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

class Prediction_element {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.injury_class = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('injury_class')) {
        this.injury_class = initObj.injury_class
      }
      else {
        this.injury_class = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Prediction_element
    // Serialize message field [injury_class]
    bufferOffset = _serializer.int32(obj.injury_class, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Prediction_element
    let len;
    let data = new Prediction_element(null);
    // Deserialize message field [injury_class]
    data.injury_class = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/Prediction_element';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '499cd330dc55ccd91a9dc7aa5896e1f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   injury_class
    float64 confidence
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Prediction_element(null);
    if (msg.injury_class !== undefined) {
      resolved.injury_class = msg.injury_class;
    }
    else {
      resolved.injury_class = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

module.exports = Prediction_element;
