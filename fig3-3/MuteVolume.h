#import "Volume.h"

@interface MuteVolume : Volume
{
    BOOL muting;
}

- (id)initWithMin: (int)a max: (int)b step: (int)s; // override
- (int)value; // override
- (id)mute;
@end

// vim:se ft=objc:
