#import <Foundation/Foundation.h>
#import "NSArray+Random.h"

int main(void) { // ARC を使用
    @autoreleasepool {
        id arr1 = [NSArray arrayWithObjects:
            @"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", nil];
        id arr2 = [NSMutableArray arrayWithObjects:
            @"01", @"02", @"03", @"04", nil];
        for (int i = 5; i < 20; i++) {
            @autoreleasepool {
                printf("%s %s\n",
                        [[arr1 anyOne] UTF8String], [[arr2 anyOne] UTF8String]);
                [arr2 addObject: [NSString stringWithFormat: @"%02d", i]];
            }
        }
    }
    return 0;
}


// vim:se ft=objc:
