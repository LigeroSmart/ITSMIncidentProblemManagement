# --
# Kernel/Language/cz_ITSMTicket.pm - the czech translation of ITSMTicket
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# Copyright (C) 2007-2008 Milen Koutev
# --
# $Id: cz_ITSMTicket.pm,v 1.5.2.1 2009-07-20 12:27:51 ub Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::cz_ITSMTicket;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.5.2.1 $) [1];

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'Due Date'}                     = 'Kone�n� datum';
    $Lang->{'Decision'}                     = '�e�en�';
    $Lang->{'Reason'}                       = 'D�vod';
    $Lang->{'Decision Date'}                = 'Datum rozhodnut�';
    $Lang->{'Add decision to ticket'}       = 'Dodat �e�en� k tiketu';
    $Lang->{'Decision Result'}              = 'V�sledek rozhodnut�';
    $Lang->{'Review Required'}              = 'Vy�aduje p�ehled';
    $Lang->{'closed with workaround'}       = 'Uzav�en s obchodn�m rozhodnut�m';
    $Lang->{'Additional ITSM Fields'}       = 'Dodate�n� ITSM pole';
    $Lang->{'Change ITSM fields of ticket'} = 'Zm�nit ITSM pol� tiketu';
    $Lang->{'Repair Start Time'}            = '�as zah�jen� opravy';
    $Lang->{'Recovery Start Time'}          = '�as zah�jen� obnoven�';
    $Lang->{'Change the ITSM fields!'}      = '';
    $Lang->{'Add a decision!'}              = '';

    return 1;
}

1;
