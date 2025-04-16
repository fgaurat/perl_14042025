use strict;
use warnings;
use Data::Dumper;

sub main{
    my @args = @_;
    $ENV{'PATH'} = $ENV{'PATH'}.";c:\\toto";
    my $env = $ENV{'PATH'};
    # print "Environment variable PATH: $env\n";
    # my @keys = keys %ENV;
    # print "@keys";
    print "$env";

}

main(@ARGV);