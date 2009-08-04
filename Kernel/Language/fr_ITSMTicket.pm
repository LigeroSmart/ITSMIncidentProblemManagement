# --
# Kernel/Language/fr_ITSMTicket.pm - the french translation of ITSMTicket
# Copyright (C) 2001-2009 Olivier Sallou <olivier.sallou at irisa.fr>
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: fr_ITSMTicket.pm,v 1.2 2009-08-04 12:32:52 ub Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::fr_ITSMTicket;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'Due Date'}                     = 'Engagenent de Date';
    $Lang->{'Decision'}                     = 'D�cision';
    $Lang->{'Reason'}                       = 'Raison';
    $Lang->{'Decision Date'}                = 'Date de d�cision';
    $Lang->{'Add decision to ticket'}       = 'Ajouter une d�cision au ticket';
    $Lang->{'Decision Result'}              = 'R�sultat de la D�cision';
    $Lang->{'Review Required'}              = 'Revue requise';
    $Lang->{'closed with workaround'}       = 'Ferm� avec contournement';
    $Lang->{'Additional ITSM Fields'}       = 'Champs ITSM additionels';
    $Lang->{'Change ITSM fields of ticket'} = 'Modifier les champs ITSM du ticket';
    $Lang->{'Repair Start Time'}            = 'Date de d�but de r�paration';
    $Lang->{'Recovery Start Time'}          = 'Date de d�but de retour � la normale';
    $Lang->{'Change the ITSM fields!'}      = 'Modifiez les champs ITSM!';
    $Lang->{'Add a decision!'}              = 'Ajoutez une d�cision!';

    return 1;
}

1;
