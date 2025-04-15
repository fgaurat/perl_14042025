use strict;
use warnings;

my $name = "Fred"; # inférence, string scalaire
my $age = 49; # inférence, string
my $greeting = "Bonjour";
my $value;
print "Bonjour $name"; # interpolation de variable
print "\n";
print 'Bonjour $name'; # pas d'interpolation de variable
print "\n";
print $greeting.$name;
print "\n";
print $greeting." ".$name;
print "\n";
print "$greeting $name";
print "\n";

# quoted string
$value = q\toto "une valeur" et 'une autre valeur' $greeting\;
my $other_value = qq\toto "une valeur" et 'une autre valeur' $greeting\;
print q{value:}.$value;
print "\n";
print q[other value:].$other_value;
print "\n";


