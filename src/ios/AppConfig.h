#import <Cordova/CDV.h>

@interface AppConfig : CDVPlugin

// Expose method to JS
- (void)getPreference:(CDVInvokedUrlCommand*)command;

@end

