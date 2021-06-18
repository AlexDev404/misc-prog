const express = require("express");
const mongoose = require("mongoose");
const Package = require("./models/package");
const methodOverride = require("method-override");
const imgbb = require("imgbb-uploader");
const app = express();
const imgkey = "31b81fce5f36c48508a5e6a87847f4f5";

mongoose.connect("mongodb://localhost/shop", {
  useNewUrlParser: true,
  useUnifiedTopology: true,
  useCreateIndex: true,
});
const connection = mongoose.connection;

imgbb(imgkey, "path/to/your/image.png")
  .then((response) => console.log(response))
  .catch((error) => console.error(error));

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
