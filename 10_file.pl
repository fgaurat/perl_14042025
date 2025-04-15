use strict;
use warnings;
use Data::Dumper;
use JSON;

sub main{
    die('erreurs paramètres') unless @_ == 1;
    my ($csv_file) = @_;

    open(my $fh, "<", $csv_file) or die "Can't open < $csv_file: $!";
    my @lines = <$fh>;
    my $header = shift @lines;
    chomp $header;
    my @header = split /,/, $header;

    my @all_data= ();

    for my $line (@lines){
        chomp $line;
        my @current_line = split /,/, $line;
        my %info = ();
        for my $i (0..$#header){
            $info{$header[$i]} = $current_line[$i];
        }
        push @all_data,\%info;
    }

    close $fh;

    # print Dumper(\$all_data[-3]);
    # print Dumper(\@all_data);

    print encode_json \@all_data

}


main(@ARGV);