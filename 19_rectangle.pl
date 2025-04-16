use strict;
use warnings;
use Data::Dumper;
  
use FindBin qw( $RealBin );
use lib $RealBin;

use Rectangle;
use Scalar::Util qw( reftype );


sub main{
    my $r = Rectangle->new(10,20);
    print scalar $r;
    print Dumper(\$r);
    print(reftype($r));
    print("\n");
    print($r->get_longueur());
    print("\n");
    $r->set_longueur(100);
    print($r->get_longueur());
    print("\n");

    $r->{'longueur'} =  ; # This will not work, as 'longueur' is private
    print("\n");
    print($r->get_longueur());
}

main(@ARGV);

