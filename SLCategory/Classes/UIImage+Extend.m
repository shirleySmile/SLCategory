//
//  UIImage+Extend.m
//  Pods
//
//  Created by shaolei on 17/4/6.
//
//

#import "UIImage+Extend.h"

@implementation UIImage (Extend)

- (UIImage *) resize:(CGSize)size {
    CGSize newSize;
    if (self.size.height / self.size.width > 1)
    {
        newSize.height = size.height;
        newSize.width = size.height / self.size.height * self.size.width;
    }
    else if (self.size.height / self.size.width < 1){
        newSize.height = size.width / self.size.width * self.size.height;
        newSize.width = size.width;
    }
    else
    {
        newSize = size;
    }
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    NSLog(@"%f--%f",newSize.height,newSize.width);
    UIGraphicsBeginImageContextWithOptions(newSize, YES, 0);
    
    // 绘制改变大小的图片
    [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    
    // 返回新的改变大小后的图片
    return scaledImage;
}

@end
