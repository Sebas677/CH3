// Auto-generated. Do not edit!

// (in-package wk3_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class signal_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_val = null;
    }
    else {
      if (initObj.hasOwnProperty('output_val')) {
        this.output_val = initObj.output_val
      }
      else {
        this.output_val = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type signal_msg
    // Serialize message field [output_val]
    bufferOffset = _serializer.float32(obj.output_val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type signal_msg
    let len;
    let data = new signal_msg(null);
    // Deserialize message field [output_val]
    data.output_val = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wk3_pkg/signal_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4765125923055d13d8bbf99b4bfa51a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 output_val
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new signal_msg(null);
    if (msg.output_val !== undefined) {
      resolved.output_val = msg.output_val;
    }
    else {
      resolved.output_val = 0.0
    }

    return resolved;
    }
};

module.exports = signal_msg;
