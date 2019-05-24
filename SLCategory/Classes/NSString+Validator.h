//
//  NSString+Validator.h
//  Pods
//
//  Created by shaolei on 17/4/6.
//  正则表达式相关
//

#import <Foundation/Foundation.h>

@interface NSString (Validator)

    /** 邮箱验证 */
- (BOOL)isValidEmail;
    
    /** 手机号码验证 */
- (BOOL)isValidPhoneNum;
    
    /** 车牌号验证 */
- (BOOL)isValidCarNo;
    
    /** 网址验证 */
- (BOOL)isValidUrl;
    
    /** 邮政编码 */
- (BOOL)isValidPostalcode;
    
    /** 纯汉字 */
- (BOOL)isValidChinese;

    /**
     @brief     是否符合IP格式，xxx.xxx.xxx.xxx
     */
- (BOOL)isValidIP;
    
    /** 身份证验证 refer to http://blog.csdn.net/afyzgh/article/details/16965107*/
- (BOOL)isValidIdCardNum;
    
    /**
     @brief     是否符合最小长度、最长长度，是否包含中文,首字母是否可以为数字
     @param     minLenth 账号最小长度
     @param     maxLenth 账号最长长度
     @param     containChinese 是否包含中文
     @param     firstCannotBeDigtal 首字母不能为数字
     @return    正则验证成功返回YES, 否则返回NO
     */
- (BOOL)isValidWithMinLenth:(NSInteger)minLenth
                   maxLenth:(NSInteger)maxLenth
             containChinese:(BOOL)containChinese
        firstCannotBeDigtal:(BOOL)firstCannotBeDigtal;
    
    /**
     @brief     是否符合最小长度、最长长度，是否包含中文,数字，字母，其他字符，首字母是否可以为数字
     @param     minLenth 账号最小长度
     @param     maxLenth 账号最长长度
     @param     containChinese 是否包含中文
     @param     containDigtal   包含数字
     @param     containLetter   包含字母
     @param     containOtherCharacter   其他字符
     @param     firstCannotBeDigtal 首字母不能为数字
     @return    正则验证成功返回YES, 否则返回NO
     */
- (BOOL)isValidWithMinLenth:(NSInteger)minLenth
                   maxLenth:(NSInteger)maxLenth
             containChinese:(BOOL)containChinese
              containDigtal:(BOOL)containDigtal
              containLetter:(BOOL)containLetter
      containOtherCharacter:(NSString *)containOtherCharacter
        firstCannotBeDigtal:(BOOL)firstCannotBeDigtal;

    /** 工商税号 */
- (BOOL)isValidTaxNo;
    
    /** 纯数字 */
- (BOOL)isValidNum;
    
    /**  判断是否为emoji表情*/
- (BOOL)isContainsEmoji;
    
@end
