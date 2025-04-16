use strict;
use warnings;
use Data::Dumper;
use LWP::Simple;

sub main{

    my $hello = "Bonjour tout le monde\n";
    $hello =~ s/Bonjour/Salut/;
    $hello =~ s/ /-/g;
    print $hello;

}



sub main_parse_log{
    my @log_files  = glob("*.log");
    
    my $cpt = 0;
    for my $log_file (@log_files){
        open(my $fh,"<",$log_file);
        for my $log_line (<$fh>){
            # if ($log_line =~ /^(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})/gi){
            # print $log_line;
            # if ($log_line =~ /^(.+?)\s/){
            #     print $1."\n";

            # }
            # else{
            #     print "pas trouvé\n";
            # }
            # show only http status
            if ($log_line =~ /\"\s(\d{3})\s/gi){

                if ($1 == 404){
                    print "Not Found\n";
                }
            }
            if ($log_line =~ /^(\d{1,3}(?:\.\d{1,3}){3})\s+(\S+)\s+-\s+\[([^\]]+)\]\s+"(\w+)\s+([^"]+)\s+HTTP\/[^"]+"\s+(\d{3})\s+(\d+)\s+"([^"]+)"\s+"([^"]+)"$/) {
                print "IP: $1\nSite: $2\nDate: $3\nMéthode: $4\nURL: $5\nCode: $6\nTaille: $7\nReferrer: $8\nUser-Agent: $9\n";
            }            
            
            $cpt++;
        }
    }
    # print $cpt;
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