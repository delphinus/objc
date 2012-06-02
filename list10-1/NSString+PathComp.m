#import "NSString+PathComp.h"
#import <Foundation/NSPathUtilities.h>
#import <stdarg.h>

@implementation NSString (PathComp)

- (NSString *)stringByAppendingPathComponents: (NSString *)str, ... {
    va_list varglist;
    NSString *work, *comp;

    if (str == nil) {
        return self;
    }
    work = [self stringByAppendingPathComponent: str];
    va_start(varglist, str);
    while ((comp = va_arg(varglist, NSString *)) != nil) {
        work = [work stringByAppendingPathComponent: comp];
    }
    va_end(varglist);
    return work;
}

@end

// vim:se ft=objc:
