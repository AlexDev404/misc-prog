const mongoose = require("mongoose");
const marked = require("marked");
const slugify = require("slugify");
const createPurifyinstance = require("dompurify");
const { JSDOM } = require("jsdom");
const domPurify = createPurifyinstance(new JSDOM().window);

const packageSchema = new mongoose.Schema({
  version: {
    type: String,
    required: true,
    default: "1.0.0",
  },
  name: {
    type: String,
    required: true,
  },
  pub: {
    type: String,
    required: true,
  },
  description: {
    type: String,
  },
  markdown: {
    type: String,
    required: true,
  },
  category: {
    type: String,
    /* required: true,*/
    default: "UNCATEGORIZED",
  },
  uploadDate: {
    type: Date,
    default: Date.now,
  },
  icon: {
    type: String,
    required: false,
  },
  distroFile: {
    type: String,
    required: true,
  },
  slug: {
    type: String,
    required: true,
    unique: true,
  },
  sanitizedHTML: {
    type: String,
    required: true,
  },
  media1: {
    type: String,
    required: true,
  },
  media2: {
    type: String,
    required: true,
  },
  media3: {
    type: String,
    required: true,
  },
  timesLiked: {
    type: Number,
    required: true,
    default: 0,
  },
  timesDownloaded: {
    type: Number,
    required: true,
    default: 0,
  },
});

packageSchema.pre("validate", function (next) {
  if (this.name) {
    this.slug = slugify(this.name, { lower: true, strict: true });
  }
  if (this.markdown) {
    this.sanitizedHTML = domPurify.sanitize(marked(this.markdown));
  }

  // right here is where I'll add the package stuff like the version, publisher, etc
  next();
});

module.exports = mongoose.model("Package", packageSchema);
