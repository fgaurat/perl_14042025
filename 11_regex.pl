use strict;
use warnings;
use Data::Dumper;
use LWP::Simple;

sub main{
    my @log_files  = glob("*.log");
    
    my $cpt = 0;
    for my $log_file (@log_files){
        open(my $fh,"<",$log_file);
        for my $log_line (<$fh>){
            $_ = $log_line;
            if (/^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/){
                print;

            }
            else{
                print "\npas trouvé\n";
            }
            $cpt++;
        }
    }
    print $cpt;
}



sub main_download{

    for my $i (1..10){
        $i = $i<10?"0$i":$i;
        
        my $log_file = "apache_logs_$i.log";
        my $url = "https://logs.eolem.com/$log_file";

        my $contenu = get($url);

        if (defined $contenu) {
            open(my $fh, ">", $log_file) or die "Can't open > $log_file: $!";
            print $fh $contenu;
        } else {
            die "Erreur pendant la récupération du contenu.\n";
        }
    }

}

main(@ARGV);