const multer = require("multer");
const imgbb = require("imgbb-uploader");
const { response } = require("express");
const imgkey = "31b81fce5f36c48508a5e6a87847f4f5";
import JSONFormatter from 'json-formatter-js'


const handleError = (err, res) => {
  res
    .status(500)
    .contentType("text/plain")
    .end("Oops! Something went wrong!");
};

const upload = multer({
  dest: "/temp/"
  // you might also want to set some limits: https://github.com/expressjs/multer#limits
});


app.post(
  "/upload",
  upload.single("file" /* name attribute of <file> element in your form */),
  (req, res) => {
    const tempPath = req.file.path;
    const targetPath = path.join(__dirname, "./temp/image.png");
    imgbb(imgkey, "./temp/image.png")
  .then((response) => {

    //LOG RESPONSE

  console.log(response);

  //CONVERT RESPONSE TO JSON

  const txtToJSON = new JSONFormatter(response);

  //PARSE RESPONSE

  const imgbbRES = JSON.parse(response);

//LOG RESPONSE

  console.log(txtToJSON);

//LOG UPLOADED IMAGE TO CONSOLE

  console.log(`Image = ${imgbbRES.image.url}`);
})
  .catch((error) => console.error(error));

    if (path.extname(req.file.originalname).toLowerCase() === ".png") {
      fs.rename(tempPath, targetPath, err => {
        if (err) return handleError(err, res);

        res
          .status(200)
          .contentType("text/plain")
          .end("File uploaded!");
      });
    } else {
      fs.unlink(tempPath, err => {
        if (err) return handleError(err, res);

        res
          .status(403)
          .contentType("text/plain")
          .end("Only .png files are allowed!");
      });
    }
  }
);