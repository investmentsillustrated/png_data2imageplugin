//
//  pngdata2imageplugin.js
//  pngdata2imageplugin PhoneGap/Cordova plugin
//

  module.exports = {
    
    saveImageDataToLibrary:function(successCallback, failureCallback, datauri) {
        // successCallback required
        if (typeof successCallback != "function") {
            console.log("pngdata2imageplugin Error: successCallback is not a function");
        }
        else if (typeof failureCallback != "function") {
            console.log("pngdata2imageplugin Error: failureCallback is not a function");
        }
        else {
            var imageData = datauri.replace(/data:image\/png;base64,/,'');
            return cordova.exec(successCallback, failureCallback, "pngdata2imageplugin","saveImageDataToLibrary",[imageData]);
        }
    }
  };
  
