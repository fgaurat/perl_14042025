use strict;
use warnings;
use Data::Dumper;

sub main{
    # print "avant\n";
    # my $r = system("perl 01_hello.pl");
    # print "apres\n";
    # print $r;

    # my $r2 = `perl 01_hello.pl`;
    # print $r2;

    my $r3 =qx{perl 01_hello.pl};
    print $r3;
    }

main(@ARGV);