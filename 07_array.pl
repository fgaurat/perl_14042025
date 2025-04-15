use strict;
use warnings;
use Data::Dumper;

my @tab = (1,"Bonjour","toto",3.2);

my $nb = @tab; # taille de la list
print $nb;
print "\n";

my $last_ind = $#tab; # dernier indice du tableau
print $last_ind;
print "\n";
my @tab2 = qw:toto tutu titi tata:;
my @tab3 = (0..9);
print "@tab3";


my @produits = (
    ["Produit 01",121,305],
    ["Produit 02",122,315],
    ["Produit 03",123,325],
    ["Produit 04",124,335]
);


# print $produits[0];     # ["Produit 01",121,305]
# print $produits[0][0];  # "Produit 01"

for my $p (@produits){
    my @the_product = @$p;
    $the_product[0] = "Toto";
    # for my $detail_p (@the_product){
    #     print "\t- $detail_p\n";
    #     $detail_p
    # }
    # my @the_product = @{$p};
    print "\n";
}

for my $p (@produits){
    my @the_product = @$p;
    print @the_product;
    print("\n")
}



# my $nb_produits = @produits;
# for(my $i=0;$i < scalar @produits;$i++){
#     my @the_product = @{$produits[$i]};
#     for(my $j=0;$j < scalar @the_product;$j++){
#         print $produits[$i][$j]." ".$i." ".$j;
#     }
#     print "\n";
# }




for my $i ( 0..$#produits ){
    my @the_product = @{$produits[$i]};
    # $produits[$i][0] = "Toto";
    for my $j ( 0..$#the_product ){
        print $produits[$i][$j]." ";
    }
    print "\n";
}

# for my $p (@produits){
#     my @the_product = @$p;
#     print @the_product;
#     print("\n")
# }


my $ligne = "value 01;value 02;value 03;value 04";

my @lignes = split(/;/, $ligne);

print Dumper(\@lignes);