#import <Foundation/Foundation.h>
#import <stdio.h>
#import <stdlib.h>

#define MASS        2000                // 調整可能
#define ARRAYSIZE   (1 << 6)            // 配列の大きさ
#define ARRAYMASK   (ARRAYSIZE - 1)     // 添字生成用ビットマスク
#define LOOP        1500                // 繰り返し回数を決める
#define ACCIDENT    0x0F                // 1/16 でオブジェクトを解放

id buf[ARRAYSIZE];  // 初期値は全て nil

@interface Cell: NSObject {
    id next;            // 線形リストの次を指す
    char mass[MASS];    // インスタンスのサイズを稼ぐ
}

+ (Cell *)cellWithNext: (id)obj;
@end

@implementation Cell
- (id)initWithNext: (id)obj {
    self = [super init];
    next = obj;
    return self;
}

+ (Cell *)cellWithNext: (id)obj {
    return [[self alloc] initWithNext: obj];
}
@end

int main(void) {
    int i, j;

    srandom(12345); // 乱数の種は固定
    for (i = 0; i < LOOP; i++) {
        @autoreleasepool {
            for (j = 0; j < LOOP; j++) {
                int idx = random() & ARRAYMASK;
                if (buf[idx] != nil && (random() & ACCIDENT) == 0) {
                    // 時々、オブジェクトを解放する
                    buf[idx] = nil;
                } else {
                    // 通常は配列に線形リストを構成していく
                    id t = buf[idx];
                    buf[idx] = [Cell cellWithNext: t];
                }
            }
        }
    }
    return 0;
}

// vim:se ft=objc:
