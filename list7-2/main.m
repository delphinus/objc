#import <Foundation/Foundation.h>
#import "list7-2.h"

int main(void) {
    Creature *a = [[Creature alloc] initWithName: @"Nike"];
    a.hitPoint = 50;
    NSLog(@"%s: HP=%d (LV=%d)\n",
            [a.name UTF8String], a.hitPoint, a.level);
    return 0;
}

// vim:se ft=objc:
