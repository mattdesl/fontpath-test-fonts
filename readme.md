Holds a few open-source test font faces for [fontpath](https://github.com/mattdesl/fontpath). This allows the various demos to all depend on centralized and versioned assets. 

The fonts are generated and stored in the `lib` folder, using the CommonJS export option of the tool. The main `index.js` will require and export them dynamically. Generally, for browserify and other tools, it's best to require the fonts manually like so:

```js
var Font = require('fontpath-test-fonts/lib/OpenSans-Regular.ttf');
```

# font size

The fonts are generated with 32 pt size. The size of the generated font may affect its kerning and positioning, depending on the font size you are rendering it at. 

# building

You need to first install fontpath:
```npm install fontpath -g```

Then you can run the build script. You may need to chmod it first:

```
chmod +x ./build.sh
./build.sh
``` 