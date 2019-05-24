//
//  NSString+Extend.h
//  Pods
//
//  Created by shaolei on 17/4/1.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Extend)

/**
 * 返回单行字符串对应的文本size
 * @param font 字体大小
 */
- (CGSize)sizeWithFont:(CGFloat)font;

/*
 * 返回多行字符串对应的size
 * @param font 字体大小
 * @param width 文本宽度
 */
- (CGSize)sizeWithFont:(CGFloat)font width:(CGFloat)width;

/** 去掉两端空格和换行符 */
- (NSString *)stringByTrimmingWhitespace;

    /** 隐藏手机号 */
- (NSString *)hiddenPhone;
    
    /** 隐藏身份证号 */
- (NSString *)hiddenCARDID;
    
    /**根据身份证获得生日*/
- (NSString *)birthdayStrFromIdentityCard;
   
/**
 *  根据身份证号获取性别
 */
- (NSString *)sexFromIdentityCard;
    
/**
 *  根据身份证号获取年龄
 */
- (NSString *)ageFromIdentityCard;
    
    
@end
