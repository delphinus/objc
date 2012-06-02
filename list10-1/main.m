#import <Foundation/NSString.h>
#import <Foundation/NSPathUtilities.h>
#import <Foundation/NSAutoreleasePool.h>
#import "NSString+PathComp.h"
#import <stdio.h>

int main(void) { // ARC を利用する
    NSString *pict = @"Pictures";
    NSString *homedir, *s;

    @autoreleasepool {
        homedir = NSHomeDirectory();
        s = [homedir stringByAppendingPathComponent: pict];
        printf("%s\n", [s UTF8String]);
        s = [homedir stringByAppendingPathComponents: pict, @"temp", nil];
        printf("%s\n", [s UTF8String]);
        s = [homedir stringByAppendingPathComponents:
            @"Desktop", pict, @"Wallpapaer", nil];
        printf("%s\n", [s UTF8String]);
    }
    return 0;
}

// vim:se ft=objc:
