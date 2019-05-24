//
//  UIColor+Extend.h
//  Pods
//
//  Created by shaolei on 17/4/6.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (Extend)
    /* 十六进制转换 + 不透明*/
+ (UIColor *)colorWithHexString:(NSString *)hexString;

    /* 十六进制转换 + 透明度*/
+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;


+ (UIColor *)colorWithR:(CGFloat)red g:(CGFloat)green b:(CGFloat)blue;


+ (UIColor *)colorWithR:(CGFloat)red g:(CGFloat)green b:(CGFloat)blue alpha:(CGFloat)alpha;

@end
