# --
# Kernel/Language/es_ITSMTicket.pm - the spanish translation of ITSMTicket
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# Copyright (C) 2008 Aquiles Cohen
# --
# $Id: es_ITSMTicket.pm,v 1.4 2008-08-20 11:04:58 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::Language::es_ITSMTicket;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.4 $) [1];

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'Due Date'}                     = 'Fecha de Vencimiento';
    $Lang->{'Decision'}                     = 'Desici�n';
    $Lang->{'Reason'}                       = 'Motivo';
    $Lang->{'Decision Date'}                = 'Fecha de Desici�n';
    $Lang->{'Add decision to ticket'}       = 'A�adir desici�n al ticket';
    $Lang->{'Decision Result'}              = 'Resultado de Desici�n';
    $Lang->{'Review Required'}              = 'Revisi�n requerida';
    $Lang->{'closed with workaround'}       = 'Cerrado con soluci�n provisional';
    $Lang->{'Additional ITSM Fields'}       = 'Campos ITSM adicionales';
    $Lang->{'Change ITSM fields of ticket'} = 'Modificar campos ITSM del ticket';
    $Lang->{'Repair Start Time'}            = 'Fecha inicial de reparaci�n';
    $Lang->{'Recovery Start Time'}          = 'Fecha inicial de recuperaci�n';

    return 1;
}

1;
