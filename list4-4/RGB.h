#import <Foundation/NSObject.h>

@interface RGB: NSObject
- (id)initWithRed: (int)r green: (int)g blue: (int)b;
- (id)blendColor: (RGB *)color;
- (void)print;
@end

// vim:se ft=objc:
