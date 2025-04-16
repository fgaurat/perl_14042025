use strict;
use warnings;
use Data::Dumper;

sub main{
    print "avant\n";
    exec("dir");
    print "apres\n";
}

main(@ARGV);
