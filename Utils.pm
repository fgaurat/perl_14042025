package Utils;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(say_hello);


sub say_hello{
    my ($name) = @_;

    print "Bonjour $name";

}



1;
