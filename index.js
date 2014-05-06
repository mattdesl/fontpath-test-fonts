//If you're packaging with browserify, you'll need to use 'fontpath-test-fonts/lib/***.ttf' etc
var fs = require('fs');
var path = require('path');
var slug = require('slugify');

var files = fs.readdirSync('lib');

files = files.filter(function(f) {
	return path.extname(f) === '.js';
});

module.exports = {};

files.forEach(function(f) {
	var key = slug(path.basename(f, '.js'));
	if (!key)
		return;
	module.exports[key] = require( '.' + path.sep + path.join('lib', f) );
});
