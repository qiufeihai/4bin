const path = require('path');
const fs = require('fs');
const globby = require('globby');
const jsonFormat = require('json-format');
let pkg = require('./package.json');

(async () => {
  const paths = await globby(['**/4*', '!node_modules', '!*.json', '!*.md']);
  pkg.bin = {}
  paths.forEach(dir => {
    pkg.bin[path.basename(dir)] = dir;
  })
  console.log(pkg.bin);
  fs.writeFileSync('./package.json', jsonFormat(pkg))
})();
