#import <Foundation/NSObject.h>

@interface A: NSObject
+ (void)initialize;
@end

@implementation A
+ (void)initialize { NSLog(@"I'm %@\n", [self class]); }
@end

@interface B: A
+ (void)initialize;
+ (void)setMessage: (const char *)msg;
- (void)sayHello;
@end

static const char *myMessage = "Hello";

@implementation B
+ (void)initialize { NSLog(@"I'm %@\n", [self class]); }
+ (void)setMessage: (const char *)msg { myMessage = msg; }
- (void)sayHello { NSLog(@"%s\n", myMessage); }
@end

int main(void) {
    id obj = [[B alloc] init];
    [obj sayHello];
    [B setMessage: "Have a good day!"];
    [obj sayHello];
    return 0;
}

// vim:se ft=objc:
