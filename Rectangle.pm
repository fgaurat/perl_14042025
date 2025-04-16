use strict;
use warnings;

package Rectangle;


sub new{

    my ($class,$longueur,$largeur) = @_;
    my $self = {
        'longueur' => $longueur,
        'largeur' => $largeur,
    };

    bless $self, $class;
    return $self;
}

sub get_longueur{
    my $self = shift;
    return $self->{'longueur'};
}

sub get_largeur{
    my ($self) = @_;
    return $self->{'largeur'};
}
sub get_surface{
    my $self = shift;
    return $self->{'longueur'} * $self->{'largeur'};
}

sub set_longueur{
    my ($self,$longueur) = @_;
    if ($longueur < 0){
        print("Longueur negative, on ne peut pas faire ca !\n");
        return;
    }
    if ($longueur > 1000){
        print("Longueur trop grande, on ne peut pas faire ca !\n");
        return;
    }
    $self->{'longueur'} = $longueur;
}
sub set_largeur{
    my ($self,$largeur) = @_;
    $self->{'largeur'} = $largeur;
}




1;

