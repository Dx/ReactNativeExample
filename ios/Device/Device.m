#import "Device.h"
#import "IncdOnboarding/IncdOnboarding.h"

@implementation Device

//export the name of the native module as 'Device' since no explicit name is mentioned
RCT_EXPORT_MODULE();

//exports a method getIncodeConfiguration to javascript
RCT_EXPORT_METHOD(IncdOnboardingConfiguration:(RCTResponseSenderBlock)callback){
 @try{   
   callback([IncdOnboarding IncdOnboardingConfiguration]);
 }
 @catch(NSException *exception){
   callback(@[exception.reason, [NSNull null]]);
 }
}

//exports a method getDeviceName to javascript
RCT_EXPORT_METHOD(getDeviceName:(RCTResponseSenderBlock)callback){
 @try{
   NSString *deviceName = [[UIDevice currentDevice] name];
   callback(@[[NSNull null], deviceName]);
 }
 @catch(NSException *exception){
   callback(@[exception.reason, [NSNull null]]);
 }
}

@end
