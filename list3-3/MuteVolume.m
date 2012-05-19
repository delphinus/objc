#import "MuteVolume.h"

@implementation MuteVolume
- (id)initWithMin: (int)a max: (int)b step: (int)s // override
{
    if ((self = [super initWithMin:a max:b step:s]) != nil) {
        muting = NO;
    }
    return self;
}

- (int)value { return muting ? min : val; }

- (id)mute {
    muting = !muting;
    return self;
}
@end

// vim:se ft=objc:
