//
//  pngdata2imageplugin.m
//  pngdata2imageplugin PhoneGap/Cordova plugin
//

#import "pngdata2imageplugin.h"
#import <Cordova/CDV.h>

@implementation pngdata2imageplugin
@synthesize callbackId;

//-(CDVPlugin*) initWithWebView:(UIWebView*)theWebView
//{
//    self = (pngdata2imageplugin*)[super initWithWebView:theWebView];
//    return self;
//}

- (void)saveImageDataToLibrary:(CDVInvokedUrlCommand*)command
{
    self.callbackId = command.callbackId;
	NSData* imageData = [NSData dataFromBase64String:[command.arguments objectAtIndex:0]];
	
	UIImage* image = [[[UIImage alloc] initWithData:imageData] autorelease];	
	UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
	
}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    // Was there an error?
    if (error != NULL)
    {
        // Show error message...
        NSLog(@"ERROR: %@",error);
		CDVPluginResult* result = [CDVPluginResult resultWithStatus: CDVCommandStatus_ERROR messageAsString:error.description];
		[self.webView stringByEvaluatingJavaScriptFromString:[result toErrorCallbackString: self.callbackId]];
    }
    else  // No errors
    {
        // Show message image successfully saved
        NSLog(@"IMAGE SAVED!");
		CDVPluginResult* result = [CDVPluginResult resultWithStatus: CDVCommandStatus_OK messageAsString:@"Image saved"];
		[self.webView stringByEvaluatingJavaScriptFromString:[result toSuccessCallbackString: self.callbackId]];
    }
}

- (void)dealloc
{	
	[callbackId release];
    [super dealloc];
}


@end
