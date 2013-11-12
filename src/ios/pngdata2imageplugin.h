//
//  pngdata2imageplugin.h
//  pngdata2imageplugin PhoneGap/Cordova plugin
//


#import <Cordova/CDVPlugin.h>

@interface pngdata2imageplugin : CDVPlugin
{
	NSString* callbackId;
}

@property (nonatomic, copy) NSString* callbackId;

- (void)saveImageDataToLibrary:(CDVInvokedUrlCommand*)command;

@end
