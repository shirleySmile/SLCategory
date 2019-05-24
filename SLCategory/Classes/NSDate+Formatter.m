//
//  NSDate+Formatter.m
//  Pods
//
//  Created by shaolei on 17/4/6.
//
//

#import "NSDate+Formatter.h"

@implementation NSDate (Formatter)

- (NSString *)stringWithFormat:(NSString *)fmtString{
    if (!fmtString.length) {
        return nil;
    }
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:fmtString];
    return [formatter stringFromDate:self];
}
    
@end
