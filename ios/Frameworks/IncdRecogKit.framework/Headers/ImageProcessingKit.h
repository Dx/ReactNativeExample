//
//  ImageProcessingKit.h
//  IncdRecogKit
//
//  Created by Alexey Golunov on 05/06/2019.
//  Copyright © 2019 Incode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseClass.h"

@interface ImageProcessingKit : BaseClass

- (float)getBrightnessLevel:(UIImage *)anImage;
- (float)getBlurrinessLevel:(UIImage *)anImage;
- (float)getCenterBrightnessLevel:(UIImage *)anImage;
// idSide = "front" or "back"
- (float)isShadowOnImage:(UIImage *)anImage x:(int)x y:(int)y width:(int)width height:(int)height idSide:(NSString*)idSide;
- (bool)detectLenses:(UIImage *)anImage faceFeature:(CIFaceFeature *)faceFeature;
- (bool)detectLenses:(UIImage *)anImage facialPoints:(NSDictionary *)facialPoints;
// facialPoints contains points from vision face detector
- (NSDictionary *)estimateHeadPose:(NSArray *)facialPoints imageSize:(CGSize)imageSize;

@end

