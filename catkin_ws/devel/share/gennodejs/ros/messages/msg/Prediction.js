// Auto-generated. Do not edit!

// (in-package messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Prediction_element = require('./Prediction_element.js');

//-----------------------------------------------------------

class Prediction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prediction_elements = null;
    }
    else {
      if (initObj.hasOwnProperty('prediction_elements')) {
        this.prediction_elements = initObj.prediction_elements
      }
      else {
        this.prediction_elements = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Prediction
    // Serialize message field [prediction_elements]
    // Serialize the length for message field [prediction_elements]
    bufferOffset = _serializer.uint32(obj.prediction_elements.length, buffer, bufferOffset);
    obj.prediction_elements.forEach((val) => {
      bufferOffset = Prediction_element.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Prediction
    let len;
    let data = new Prediction(null);
    // Deserialize message field [prediction_elements]
    // Deserialize array length for message field [prediction_elements]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.prediction_elements = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.prediction_elements[i] = Prediction_element.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.prediction_elements.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/Prediction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8cd1b69eb03fe3bdb64009a9530a56a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Prediction_element[] prediction_elements
    ================================================================================
    MSG: messages/Prediction_element
    int32   injury_class
    float64 confidence
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Prediction(null);
    if (msg.prediction_elements !== undefined) {
      resolved.prediction_elements = new Array(msg.prediction_elements.length);
      for (let i = 0; i < resolved.prediction_elements.length; ++i) {
        resolved.prediction_elements[i] = Prediction_element.Resolve(msg.prediction_elements[i]);
      }
    }
    else {
      resolved.prediction_elements = []
    }

    return resolved;
    }
};

module.exports = Prediction;
