#import "CDVIntentAndNavigationFilter+OpenBlank.h"
#import <Cordova/CDV.h>

@implementation CDVIntentAndNavigationFilter (OpenBlank)




#pragma mark CDVPlugin

- (void)pluginInitialize {
    if ([self.viewController isKindOfClass:[CDVViewController class]]) {
        [(CDVViewController*)self.viewController parseSettingsWithParser:self];
    }
}

- (BOOL)shouldOverrideLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType {
    
    NSURL* url = [request URL];
    BOOL allowNavigationsPass = YES;
    
    switch (navigationType) {
        case UIWebViewNavigationTypeLinkClicked: {
            [[UIApplication sharedApplication] openURL:url];
            allowNavigationsPass = NO;
        }
        case UIWebViewNavigationTypeOther: {
            NSString *string1 = url.absoluteString;
            NSRange range = [ string1 rangeOfString:@"utm_"];
            if (range.location != NSNotFound) {
                [[UIApplication sharedApplication] openURL:url];
                allowNavigationsPass = NO;
            }
        }
    }
    return allowNavigationsPass;
}

@end
