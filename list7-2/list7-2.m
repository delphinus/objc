#import "list7-2.h"

@implementation Creature {
    NSString *name;
}
@synthesize name;
@synthesize hitPoint, magicPoint;
@synthesize speed;
@synthesize skill = ability;

- (id)initWithName: (NSString *)str {
    if ((self = [super init]) != nil) {
        name = str;
        hitPoint = magicPoint = 10;
        speed = ability = 5;
    }
    return self;
}

@dynamic level;
- (int)level {
    return (hitPoint + magicPoint + self.skill) / 10;
}
@end

// vim:se ft=objc:
