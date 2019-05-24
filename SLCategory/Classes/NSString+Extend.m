//
//  NSString+Extend.m
//  Pods
//
//  Created by shaolei on 17/4/1.
//
//

#import "NSString+Extend.h"

@implementation NSString (Extend)

- (CGSize)sizeWithFont:(CGFloat)font{
    return [self sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]}];
}

- (CGSize)sizeWithFont:(CGFloat)font width:(CGFloat)width{
    return [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]} context:nil].size;
}
    
- (NSString *)stringByTrimmingWhitespace{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

    /** 隐藏手机号 */
-(NSString *)hiddenPhone{
    if (self.length >=8) {
        NSString *string = [self substringWithRange:NSMakeRange(3, 5)];
        NSString *str = [self stringByReplacingOccurrencesOfString:string withString:@"*****"];
        return str;
        
    }
    return self;
}
    
    /** 隐藏身份证号 */
-(NSString *)hiddenCARDID{
    if (self.length >=12) {
        
        NSString *string = [self substringWithRange:NSMakeRange(3, 9)];
        NSString *str = [self stringByReplacingOccurrencesOfString:string withString:@"*********"];
        return str;
    }
    return self;
}
    
    /**根据身份证获得生日*/
-(NSString *)birthdayStrFromIdentityCard{
    NSMutableString *birth = [NSMutableString stringWithCapacity:0];
    NSString *year = nil;
    NSString *month = nil;
    
    BOOL isAllNumber = YES;
    NSString *day = nil;
    if([self length]<14)
    return birth;
    
    //**截取前14位
    NSString *fontNumer = [self substringWithRange:NSMakeRange(0, 13)];
    
    //**检测前14位否全都是数字;
    const char *str = [fontNumer UTF8String];
    const char *p = str;
    while (*p!='\0') {
        if(!(*p>='0'&&*p<='9'))
        isAllNumber = NO;
        p++;
    }
    if(!isAllNumber)
    return birth;
    
    year = [self substringWithRange:NSMakeRange(6, 4)];
    month = [self substringWithRange:NSMakeRange(10, 2)];
    day = [self substringWithRange:NSMakeRange(12,2)];
    
    [birth appendString:year];
    [birth appendString:@"-"];
    [birth appendString:month];
    [birth appendString:@"-"];
    [birth appendString:day];
    return birth;
}

- (NSString *)sexFromIdentityCard{
    int sexInt;
    
    if (self.length<15){
        if(self.length == 15){
            sexInt = [[self substringFromIndex:(self.length-1)] intValue];
        }else{
            sexInt = [[self substringWithRange:NSMakeRange(16,1)] intValue];
        }
        
        if(sexInt%2!=0) return @"男";
        else return @"女";
    }
    return @"男";
}
    
-(NSString *)ageFromIdentityCard{
    NSDateFormatter *formatterTow = [[NSDateFormatter alloc]init];
    [formatterTow setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *bsyDate = [formatterTow dateFromString:[self birthdayStrFromIdentityCard]];
    NSTimeInterval dateDiff = [bsyDate timeIntervalSinceNow];
    int age = trunc(dateDiff/(60*60*24))/365;
    return [NSString stringWithFormat:@"%d",-age];
}

@end
