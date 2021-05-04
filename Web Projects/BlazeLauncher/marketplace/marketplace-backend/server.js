const express = require("express");
const mongoose = require("mongoose");
const Package = require("./models/package");
const methodOverride = require("method-override");
const app = express();

mongoose.connect("mongodb://localhost/shop", {
  useNewUrlParser: true,
  useUnifiedTopology: true,
  useCreateIndex: true,
});
const connection = mongoose.connection;

connection.once("open", function () {
  app.use(express.urlencoded({ extended: false }));
  app.use(methodOverride("_action"));
  const packageRouter = require("./routes/packages");
  app.use(express.static(__dirname + "/public"));

  app.set("view engine", "ejs");

  app.get("/", async (req, res) => {
    const packages = await Package.find().sort({ uploadDate: "desc" });
    res.render("./packages/index", { packages: packages });
  });
  app.use("/packages", packageRouter);
  app.listen(80);
});
