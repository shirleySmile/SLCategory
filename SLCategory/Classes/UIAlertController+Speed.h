//
//  UIAlertController+Speed.h
//  Pods
//
//  Created by shaolei on 17/4/6.
//
//

#import <UIKit/UIKit.h>

@interface UIAlertController (Speed)


+ (void)showAlertFromVC:(UIViewController *)vc
                      title:(NSString *)title
                    message:(NSString *)message
          cancelButtonTitle:(NSString *)cancelTitle
         confirmButtonTitle:(NSString *)confirmTitle
              confirmAction:(void(^)(void))btnConfirmBlock;
    
+ (void)showAlertFromVC:(UIViewController *)vc
                      title:(NSString *)title
                    message:(NSString *)message
          cancelButtonTitle:(NSString *)cancelTitle
              cancelAction:(void(^)(void))btnCancelBlock;
    
+ (void)showActionSheetFromVC:(UIViewController *)vc
                        title:(NSString *)title
                      message:(NSString *)message
                 contentArray:(NSArray *)contentArray
              selectOneAction:(void(^)(NSInteger num))btnClickBlock;
    

@end
