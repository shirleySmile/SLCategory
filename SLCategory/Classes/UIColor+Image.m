//
//  UIColor+Image.m
//  Pods
//
//  Created by shaolei on 17/4/6.
//
//

#import "UIColor+Image.h"

@implementation UIColor (Image)

    
- (UIImage *)imageWithColor{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(contextRef, self.CGColor);
    CGContextFillRect(contextRef, rect);
    contextRef = nil;
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}
    
    
@end
