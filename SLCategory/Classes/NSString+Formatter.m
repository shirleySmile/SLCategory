//
//  NSString+Formatter.m
//  Pods
//
//  Created by SHAO LEI on 17/4/10.
//
//

#import "NSString+Formatter.h"

@implementation NSString (Formatter)

- (NSDate *) dateFomatter: ( NSString * )fmt {
    if (!fmt.length) {
        return nil;
    }
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:fmt];
    return [dateFormatter dateFromString:self];
}


@end
