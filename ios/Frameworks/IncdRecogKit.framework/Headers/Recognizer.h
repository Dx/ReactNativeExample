#import <UIKit/UIKit.h>
#import "BaseClass.h"

@interface Prediction: NSObject
@property NSString *templateID;
@property float confidence;
@end

@interface TemplateWithID: NSObject
@property NSString *templateID;
@property NSString *templ;
@end

@interface GroupItem: NSObject
@property NSString *templateID;
@property float confidence;
@end

@interface Recognizer : BaseClass

- (id)initWithModelFilePath:(NSString *)modelFilePath;
- (NSString *)getTemplateWithImage:(UIImage *)anImage faceFeature:(CIFaceFeature *)faceFeature;
- (NSString *)getTemplateWithImage:(UIImage *)anImage facialPoints:(NSDictionary *)facialPoints;
- (void)createTemplateSetWithName:(NSString *)templateSetName maxTemplatesCount:(int)maxTemplatesCount;
- (void)trainWithTemplate:(NSString *)aTemplate templateID:(NSString *)aTemplateID templateSetName:(NSString *)templateSetName;
- (Prediction *)predictWithTemplate:(NSString *)aTemplate templateSetName:(NSString *)templateSetName;
- (NSArray *)predictWithTemplate:(NSString *)aTemplate threshold:(float)aThreshold templateSetName:(NSString *)templateSetName;
- (bool)removeByTemplateID:(NSString *)aTemplateID templateSetName:(NSString *)templateSetName;
- (void)clearWithTemplateSetName:(NSString *)templateSetName;
- (NSArray *)groupTemplates:(float)aThreshold templateSetName:(NSString *)templateSetName;
- (float)compare:(NSString *)firstTemplate secondTemplate:(NSString *)secondTemplate;

@end
