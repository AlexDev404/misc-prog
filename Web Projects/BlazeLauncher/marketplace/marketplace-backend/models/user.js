const mongoose = require("mongoose");
const marked = require("marked");
const slugify = require("slugify");
const createPurifyinstance = require("dompurify");
const { JSDOM } = require("jsdom");
const domPurify = createPurifyinstance(new JSDOM().window);

const userSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  email: {
    type: String,
    required: true,
  },
  pass: {
    type: String,
    required: true,
  },
  avatar: {
    type: String,
    required: true,
  },
  joinDate: {
    type: Date,
    default: Date.now,
  },
  uNameEnabled: {
    type: Number,
    required: true,
    default: 0,
  },
  Admin: {
    type: Number,
    required: true,
    default: 0,
  },
});

module.exports = mongoose.model("UserAccount", userSchema);
