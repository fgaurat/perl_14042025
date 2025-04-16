#!/usr/bin/perl
use strict;
use warnings;

# Vérifie si un fichier a été passé en argument
if (@ARGV < 1) {
    die "Usage: $0 <nom_du_fichier>\n";
}

# Ouvre le fichier passé en argument
my $filename = $ARGV[0];
open(my $fh, '<', $filename) or die "Impossible d'ouvrir le fichier '$filename': $!\n";

# Parcourt chaque ligne du fichier
while (my $line = <$fh>) {
    chomp $line;

    # Expression régulière pour détecter les adresses IP
    while ($line =~ /(\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b)/g) {
        my $ip = $1;

        # Vérifie que chaque octet est compris entre 0 et 255
        if (valid_ip($ip)) {
            print "$ip\n";
        }
    }
}

close($fh);

# Fonction pour valider une adresse IP
sub valid_ip {
    my ($ip) = @_;
    my @octets = split(/\./, $ip);

    foreach my $octet (@octets) {
        return 0 if $octet < 0 || $octet > 255;
    }

    return 1;
}