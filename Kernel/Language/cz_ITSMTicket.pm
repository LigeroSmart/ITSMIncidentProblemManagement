# --
# Kernel/Language/cz_ITSMTicket.pm - the czech translation of ITSMTicket
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# Copyright (C) 2007-2008 Milen Koutev
# Copyright (C) 2010 O2BS.com, s r.o. Jakub Hanus
# --
# $Id: cz_ITSMTicket.pm,v 1.7 2010-02-22 12:21:15 mb Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::cz_ITSMTicket;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.7 $) [1];

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'Due Date'}                     = 'Nejzaz�� Term�n';
    $Lang->{'Decision'}                     = '�e�en�';
    $Lang->{'Reason'}                       = 'P���ina';
    $Lang->{'Decision Date'}                = 'Datum �e�en�';
    $Lang->{'Add decision to ticket'}       = 'P�idat �e�en� k tiketu';
    $Lang->{'Decision Result'}              = 'V�sledek �e�en�';
    $Lang->{'Review Required'}              = 'Vy�aduje P�ehled';
    $Lang->{'closed with workaround'}       = 'uzav�eno do�asn�m �e�en�m';
    $Lang->{'Additional ITSM Fields'}       = 'Dopl�kov� ITSM pole';
    $Lang->{'Change ITSM fields of ticket'} = 'Zm�na ITSM pol� v tiketu';
    $Lang->{'Repair Start Time'}            = '�as zah�jen� opravy';
    $Lang->{'Recovery Start Time'}          = '�as zah�jen� obnoven�';
    $Lang->{'Change the ITSM fields!'}      = 'Zm��te ITMS pole!';
    $Lang->{'Add a decision!'}              = 'Dopl�te �e�en�!';

    return 1;
}

1;
