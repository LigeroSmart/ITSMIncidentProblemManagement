# --
# Kernel/Language/es_ITSMTicket.pm - the spanish translation of ITSMTicket
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# Copyright (C) 2008 Aquiles Cohen
# --
# $Id: es_ITSMTicket.pm,v 1.6 2009-05-18 09:55:54 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::es_ITSMTicket;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.6 $) [1];

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
    $Lang->{'Change the ITSM fields!'}      = '';
    $Lang->{'Add a decision!'}              = '';

    return 1;
}

1;
