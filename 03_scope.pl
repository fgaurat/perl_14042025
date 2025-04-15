use strict;
use warnings;

my $value = "The value";
my $refValue = \$value;
my $cpt =2;

if($cpt==2){
    my $value = $value;
    print $value;
    print "\n";
}
print $value;
print "\n";
print $refValue;
print "\n";
print ${$refValue};
print "\n";
print $$refValue;
print "\n";


