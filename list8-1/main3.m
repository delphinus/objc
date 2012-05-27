#import "list8-1.h"

int main(void) {
    int (*f)(id, SEL);
    id obj = [[testObj alloc] init];
    int v = [obj testMethod];
    f = (int (*)(id, SEL))[obj methodForSelector: @selector(testMethod)];
    for (int i = 0; i < LOOP; i++) {
        for (int j = 0; j < 20000; j++) {
            v += (*f)(obj, @selector(testMethod));
        }
    }
    return (v == 0);
}

// vim:se ft=objc:
