use strict;
use warnings;
use Data::Dumper;
use Scalar::Util;

sub main{
    my $a = "1.2";
    my $b = 2;

    print(  ($a)?"yes":"no");
    print("\n");
    print $a+$b;
    print("\n");
    print $a.$b;
    print("\n");
}

main(@ARGV);