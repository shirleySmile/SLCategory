//
//  UIAlertController+Speed.m
//  Pods
//
//  Created by shaolei on 17/4/6.
//
//

#import "UIAlertController+Speed.h"

@implementation UIAlertController (Speed)

+ (void)showAlertFromVC:(UIViewController *)vc
                      title:(NSString *)title
                    message:(NSString *)message
          cancelButtonTitle:(NSString *)cancelTitle
         confirmButtonTitle:(NSString *)confirmTitle
              confirmAction:(void(^)(void))btnConfirmBlock{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
                               
    [alert addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:confirmTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (btnConfirmBlock) {
            btnConfirmBlock();
        }
    }]];
    
    [vc presentViewController:alert animated:YES completion:nil];
    
}
    
+ (void)showAlertFromVC:(UIViewController *)vc
                      title:(NSString *)title
                    message:(NSString *)message
          cancelButtonTitle:(NSString *)cancelTitle
               cancelAction:(void(^)(void))btnCancelBlock{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        if (btnCancelBlock) {
            btnCancelBlock();
        }
    }]];
    
    [vc presentViewController:alert animated:YES completion:nil];
}
    
+ (void)showActionSheetFromVC:(UIViewController *)vc title:(NSString *)title message:(NSString *)message contentArray:(NSArray *)contentArray selectOneAction:(void (^)(NSInteger))btnClickBlock
{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    for (NSInteger i = 0; i<contentArray.count; i++) {
        [alert addAction:[UIAlertAction actionWithTitle:(NSString *)contentArray[i] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            if (btnClickBlock) {
                btnClickBlock(i);
            }
        }]];
    }
    
    [vc  presentViewController:alert animated:YES completion:nil];
}
    
@end

