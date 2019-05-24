//
//  NSString+Encrypt.h
//  Pods
//
//  Created by shaolei on 17/4/6.
//
//

#import <Foundation/Foundation.h>

@interface NSString (Encrypt)
    
- (NSString *)base64;
    
- (NSString *)md5;
    
- (NSString *)md5Lowercase16;
    
- (NSString *)sha1;
    
- (NSString *)md5Uppercase32;

@end
