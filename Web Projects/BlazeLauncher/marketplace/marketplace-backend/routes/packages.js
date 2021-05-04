const express = require("express");
const Package = require("../models/package");
const router = express.Router();

router.get("/new", (req, res) => {
  res.render("packages/new", { package: new Package() });
});

router.get("/edit/:id", async (req, res) => {
  const package = await Package.findById(req.params.id);
  res.render("packages/edit", { package: package });
});

router.get("/:slug", async (req, res) => {
  const package = await Package.findOne({ slug: req.params.slug });
  if (package == null) res.redirect("/404.html");
  res.render("packages/show", { package: package });
});

router.post(
  "/",
  async (req, res, next) => {
    req.package = new Package();
    next();
  },
  savePackageAndRedirect("new")
);

router.put(
  "/:id",
  async (req, res, next) => {
    req.package = await Package.findById(req.params.id);
    next();
  },
  savePackageAndRedirect("edit")
);

router.delete("/:id", async (req, res) => {
  await Package.findByIdAndDelete(req.params.id);
  res.redirect("/");
});

function savePackageAndRedirect(path) {
  return async (req, res) => {
    let package = req.package;
    package.name = req.body.name;
    package.description = req.body.description;
    package.markdown = req.body.markdown;
    package.category = req.body.category;
    try {
      await package.save();
      res.redirect(`/packages/${package.slug}`);
    } catch (e) {
      res.render(`packages/${path}`, { package: package });
      console.error(e);
    }
  };
}
module.exports = router;
