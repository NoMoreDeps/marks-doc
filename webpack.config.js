const path = require('path');

module.exports = {
  entry  : './out/index.js',
  output : {
    path     : path.resolve(__dirname, 'js'),
    filename : 'bundle.js'
  },
  externals : {
    "react"     : 'React',
    "react-dom" : 'ReactDOM'
  },
};