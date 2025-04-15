  use strict;
use warnings;
use LWP::Simple;

my $url = "https://logs.eolem.com/apache_logs_01.log";

my $contenu = get($url);

if (defined $contenu) {
    print "Contenu du fichier :\n";
    print $contenu;
} else {
    die "Erreur pendant la récupération du contenu.\n";
}
  
