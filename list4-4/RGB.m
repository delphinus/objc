#import <Foundation/NSObject.h>
#import "RGB.h"

static unsigned char roundUChar(int v) {
    if (v < 0) return 0;
    if (v > 255) return 255;
    return (unsigned char)v;
}

@implementation RGB
{
    unsigned char red, green, blue;
}

- (id)initWithRed: (int)r green: (int)g blue: (int)b {
    if ((self = [super init]) != nil) {
        red = roundUChar(r);
        green = roundUChar(g);
        blue = roundUChar(b);
    }
    return self;
}

- (id)blendColor: (RGB *)color {
    red = ((unsigned int)red + color->red) / 2;
    green = ((unsigned int)green * color->green) / 2;
    blue = ((unsigned int)blue * color->blue) / 2;
    return self;
}

- (void)print {
    NSLog(@"(%d, %d, %d)\n", red, green, blue);
}
@end

// vim:se ft=objc:
