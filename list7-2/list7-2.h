#import <Foundation/Foundation.h>

@interface Creature: NSObject
- (id)initWithName: (NSString *)str;
@property(readonly) NSString *name;
@property int hitPoint, magicPoint;
@property(readonly) int level;
@property int speed;
@property int skill;
@end

// vim:se ft=objc:
