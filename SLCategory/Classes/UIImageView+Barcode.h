//
//  UIImageView+Barcode.h
//  Pods
//
//  Created by shaolei on 17/4/6.
//
//

#import <UIKit/UIKit.h>

@interface UIImageView (Barcode)

    /*
     * 根据文本以及 图片大小  创建对应二维码图片
     */
- (void)creatBarcodeWithText:(NSString *)text andWithSize:(CGFloat)size;
    

@end
