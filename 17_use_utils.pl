use strict;
use warnings;
use Data::Dumper;
use FindBin qw( $RealBin );
use lib $RealBin;
# use Utils;
use Utils qw(say_hello);

sub main{
    my $n = "fred";
    # Utils::say_hello($n);
    say_hello($n);

}

main(@ARGV);

