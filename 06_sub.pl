use strict;
use warnings;


# $_ = "Hello";
# print;


sub somme{
    die('erreurs paramètres') unless @_ == 2;
    # print("args @_\n");
    # print("param1 $_[0]\n");
    # my $a = $_[0];
    # my $b = $_[1];
    # my $a = shift @_;
    # my $b = shift @_;
    my ($a,$b) = @_;

    return $a+$b;
}

my $res = somme(3,4);
print "res: $res"; # 7
print "\n----------------------\n";


# HelloWorld => UpperCamelCase
# helloWorld => camelCase
# hello_world => snake_case
# hello-world => kebab-case / train-case  / spin-case


sub testValue{
    my $a = @_;
    print("testValue ".$a);
    $a = 'une autre valeur';
    print "dans sub $a \n";
}

sub testRef{
    my ($aRef) = @_;
    $$aRef = 'une autre valeur';
    print "dans sub $aRef \n";
}


my $a ="value 01";
testValue($a);
print $a;

testRef(\$a);
print "Après testRef: ".$a;



