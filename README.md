pngdata2ImagePlugin
============

This plugin allows you to save a dataURI to an Android or iOS photo library.

Installation
------------

### For Cordova 3.0.x:

1. To add this plugin just type: `cordova plugin add https://github.com/investmentsillustrated/png_data2imageplugin.git` or `phonegap local plugin add https://github.com/investmentsillustrated/png_data2imageplugin.git`
2. To remove this plugin type: `cordova plugin remove com.investmentsillustrated.pngdata2ImagePlugin` or `phonegap local plugin remove com.investmentsillustrated.pngdata2ImagePlugin`

Usage:
------

Call the `window.pngdata2ImagePlugin.saveImageDataToLibrary()` method using success and error callbacks and the id attribute or the element object of the canvas to save:

```javascript
function onDeviceReady()
{
	window.canvas2ImagePlugin.saveImageDataToLibrary(
        function(msg){
            console.log(msg);
        },
        function(err){
            console.log(err);
        },
        datauri
    );
}
```
