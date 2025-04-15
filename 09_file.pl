use strict;
use warnings;


# while (1){
#     print "Entrez une valeur:\n";
#     my $ligne = <STDIN>;
#     my $nb_removed_char = chomp $ligne;
#     last if $ligne eq "quit";
#     print "echo:".uc $ligne."\n";
# }

my $ligne;
do{
    print "Entrez une valeur:\n";
    $ligne = <STDIN>;
    my $nb_removed_char = chomp $ligne;
    print "echo:".uc $ligne."\n";

}
while($ligne ne "quit")


# print STDOUT "toto";