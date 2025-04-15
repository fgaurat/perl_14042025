use strict;
use warnings;
use Data::Dumper;



my %voiture = (
    "marque"=>"Peugeot",
    "modèle"=>"307",
    "couleur"=>"vert ouranos",
    "equipements"=>["GPS","Régulateur de vitesse"] 

);
my %voiture2 = (
    "marque"=>"Peugeot",
    "modèle"=>"307",
    "couleur"=>"vert ouranos",
    "equipements"=>("GPS","Régulateur de vitesse")
);

my @voiture = [%voiture,%voiture2];

print $voiture{"marque"};
print "\n";
my $l = scalar %voiture;
print $l;
print "\n";
# print scalar %voiture;
# print "\n";

# parcours key/value
foreach my $key (keys %voiture){
    print("$key: $voiture{$key}\n");
}

# parcours value
foreach my $value (values %voiture){
    print("value: $value\n");
}

my @k = keys %voiture;
my @v = values %voiture;
print("=== keys ===\n");
print("@k\n");

$voiture{"moteur"} = "diesel";

print Dumper(\%voiture);