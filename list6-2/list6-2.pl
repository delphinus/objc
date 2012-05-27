#!/usr/bin/env perl
use 5.12.0;
use warnings;

my $MASS = 2000;                    # 調整可能
my $ARRAYSIZE = 1 << 6;             # 配列の大きさ
my $ARRAYMASK = $ARRAYSIZE - 1;     # 添字生成用ビットマスク
my $LOOP = 1500;                    # 繰り返し回数を求める
my $ACCIDENT = 0x0F;                # 1/16 でオブジェクトを解放

my @buf;

package Cell;
sub new { my $class = shift;
    my $obj = shift;
    return bless +{next => $obj}, $class;
}

1;

package main;
srand 12345; # 乱数の種は固定

for my $i (1 .. $LOOP) {
    for my $j (1 .. $LOOP) {
        my $idx = rand() & $ARRAYMASK;
        if (defined $buf[$idx] && (rand() & $ACCIDENT) == 0) {
            delete $buf[$idx];
        } else {
            my $t = $buf[$idx];
            $buf[$idx] = Cell->new($t);
        }
    }
}

exit 0;
