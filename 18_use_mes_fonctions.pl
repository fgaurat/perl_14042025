use strict;
use warnings;
use Data::Dumper;

use FindBin qw( $RealBin );
use lib $RealBin;

# Compilation
use Utils;

# Execution
require 'mes_fonctions.pl';

sub main{
    MesFonctions::say_hello('fred');
}

main(@ARGV);