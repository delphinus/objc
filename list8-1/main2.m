#import "list8-1.h"

int main(void) {
    id obj = [[testObj alloc] init];
    int v = [obj testMethod];
    for (int i = 0; i < LOOP; i++) {
        for (int j = 0; j < 20000; j++) {
            v += (int)[obj performSelector: @selector(testMethod)];
        }
    }
    return (v == 0);
}

// vim:se ft=objc:
