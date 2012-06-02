#import "NSArray+Random.h"
#import <objc/runtime.h>

@implementation NSArray (Random)

static char prevKey; // キーとして使うアドレス用変数

static int random_value(void) { // 単純な線形合同法（乱数）
    static unsigned long rnd = 201206; // 乱数の種（変更可）
    rnd = rnd * 1103515245UL + 12345;
    return (int)((rnd >> 16) & 0x7fff);
}

- (id)anyOne {
    id item;
    NSUInteger count = [self count];

    if (count == 0) {
        item = [self lastObject];
    } else {
        id prev = objc_getAssociatedObject(self, &prevKey);
            // 連想参照 : 初めて使うときには nil が返る
        NSUInteger index = random_value() % count;
        item = [self objectAtIndex: index];
        if (item == prev) { // 前回の値と同じなら
            if (++index >= count) { // インデックスを進めるだけ
                index = 0;
            }
            item = [self objectAtIndex: index];
        }
    }
    objc_setAssociatedObject(self, &prevKey, item,
            OBJC_ASSOCIATION_RETAIN); // 取り出したオブジェクトを記憶
    return item;
}

@end

// vim:se ft=objc:
