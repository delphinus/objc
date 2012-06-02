#import <Foundation/NSString.h>

@interface NSString (PathComp)

- (NSString *)stringByAppendingPathComponents: (NSString *)str, ...
    NS_REQUIRES_NIL_TERMINATION;

@end

// vim:se ft=objc:
