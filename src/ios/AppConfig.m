#import <Cordova/CDV.h>

@interface AppConfig : CDVPlugin
- (void)getPreference:(CDVInvokedUrlCommand*)command;
@end

@implementation AppConfig

- (void)getPreference:(CDVInvokedUrlCommand*)command
{
    NSString* key = [command.arguments objectAtIndex:0];
    
    // Cordova stores preferences keys in lowercase internally
    NSString* value = [self.commandDelegate.settings objectForKey:[key lowercaseString]];
    
    if (value == nil) {
        value = @""; // default to empty string if not found
    }

    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                                  messageAsString:value];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end

