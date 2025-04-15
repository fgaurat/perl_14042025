use strict;
use warnings;



my $var = 1;
my @tab = (1,2,3);
my %hash = ("key1"=>"value 01","key2"=>"value 02","key3"=>"value 03");

my $ref_var = \$var;
my $ref_tab = \@tab;
my $ref_hash = \%hash;





print "scalar ref: $$ref_var\n";
print "array ref: @$ref_tab\n";

my $v0 = $hash{"key1"};

my $v01 = $ref_hash->{'key1'};
print "hash ref: $ref_hash->{'key1'} \n";
print "hash ref: $ref_hash->{'key1000'} \n";

if($ref_hash->{'key1000'}){
    print "ok\n";
}
else {
    print "ko\n";
}

# if(exists $ref_hash->{'key1000'}){
#     print $ref_hash->{'key1000'};
# }
# else{
#     print "Erreur";
# }



# true ?"ok":"ko"


# print exists $ref_hash->{'key1000'}?"ok\n":"ko\n";

my $result = exists $ref_hash->{'key1000'}?"ok\n":"ko\n";
print $result;

my $ref_ref_var = \$ref_var;

print $$$ref_ref_var;

print "\n----------\n";

# référence liste
my $ref_table = ["Value 01","Value 02","Value 03"];


print $$ref_table[0];
print $ref_table->[0];
print $ref_table->[1];
