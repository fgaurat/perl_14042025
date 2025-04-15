use strict;
use warnings;

my @tab = (1,2,3,15,8,98);

print "ref 1".ref(\@tab);
print "\n";
print @tab;
print "\n";
print $tab[0];
print "\n";

# $tab[50] =1548;
my $a = scalar @tab;
print $a;
print "\n";
print $tab[-1];
$tab[-1] = 587;
print $tab[-1];
print "\n";

print @tab;
print "\n";
print "@tab";

print "\n---------------------------\n";
my @tab2 = (10,20,30,40,50);

for(my $i=0;$i<scalar @tab2;$i++){
    print "elem $i: $tab2[$i]\n";
}
print "\n---------------------------\n";

my $i=0;
foreach my $elem (@tab2){
    print($i++." ".$elem."\n");
}

print "\n---------------------------\n";
my $i=0;
for my $elem (@tab2){
    print($i++." ".$elem."\n");
}

# ajouter à la fin
push @tab2,60;
print("@tab2");
# Enlever de la fin
my $last_value = pop @tab2;
print "\n";
print("last_value : $last_value\n");
print "\n";
print("@tab2");
print "\n";

# ajouter au début
unshift  @tab2,-10;
print("@tab2");
print "\n";
# enlever du début
my $first_value = shift @tab2;

# splice ARRAY,OFFSET,LENGTH,LIST
# splice(@tab2,2,5,1000,1001);
splice(@tab2,2,0,1000);
print("@tab2");
print "\n";
print "\n---------------------------\n";

my @tab3 = ('B','o','n','j','o','u','r');
print @tab3;
print "\n";
my $value = join("",@tab3);
print $value;
