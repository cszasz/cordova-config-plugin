#import "AppConfig.h"

@implementation AppConfig

- (void)getPreference:(CDVInvokedUrlCommand*)command
{
    NSString* key = [command.arguments objectAtIndex:0];
    NSString* value = [self.commandDelegate.settings objectForKey:[key lowercaseString]];

    if (!value) {
        value = @"";
    }

    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                                  messageAsString:value];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end

