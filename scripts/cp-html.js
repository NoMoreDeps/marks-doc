var fs = require("fs-extra");
require("../index");
  
function copyIndex(pages) {
  pages.forEach(_ => {
    if (_.path === "/") return;
    const htmlPath = _.html || "index"

    if (_.pages) {
      fs.ensureFileSync(`.${_.path}/index.html`);
      fs.copyFileSync(`./${htmlPath}.html`, `.${_.path}/index.html`);
      console.log("Copying", `.${_.path}/index.html`);

      fs.ensureFileSync(`./md${_.path}.mk`);
      console.log("Ensure ", `./md${_.path}.mk`);

      copyIndex(_.pages);
    } else {
      fs.ensureFileSync(`.${_.path}.html`);
      fs.copyFileSync(`./${htmlPath}.html`, `.${_.path}.html`);
      console.log("Copying", `.${_.path}.html`);

      fs.ensureFileSync(`./md${_.path}.mk`);
      console.log("Ensure ", `./md${_.path}.mk`);
    }
  });
}

copyIndex(global_config.pages);
