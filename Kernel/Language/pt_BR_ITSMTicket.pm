# --
# Kernel/Language/pt_BR_ITSMTicket.pm - the Brazilian translation of ITSMTicket
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# Copyright (C) 2010 Cristiano Kornd�rfer, http://www.dorfer.com.br/
# --
# $Id: pt_BR_ITSMTicket.pm,v 1.1 2010-03-01 09:53:14 mb Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::pt_BR_ITSMTicket;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.1 $) [1];

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'Due Date'}                     = 'Data Vencimento';
    $Lang->{'Decision'}                     = 'Decis�o';
    $Lang->{'Reason'}                       = 'Raz�o';
    $Lang->{'Decision Date'}                = 'Data de Decis�o';
    $Lang->{'Add decision to ticket'}       = 'Adicionar Decis�o � Solicita��o';
    $Lang->{'Decision Result'}              = 'Decis�o Resultante';
    $Lang->{'Review Required'}              = 'Revis�o Requisitada';
    $Lang->{'closed with workaround'}       = 'fechada com solu��o de contorno';
    $Lang->{'Additional ITSM Fields'}       = 'Campos adicionais ITSM';
    $Lang->{'Change ITSM fields of ticket'} = 'Mudar os campos ITSM da solicita��o';
    $Lang->{'Repair Start Time'}            = 'Hora Inicial do Reparo';
    $Lang->{'Recovery Start Time'}          = 'Hora Inicial da Recupera��o';
    $Lang->{'Change the ITSM fields!'}      = 'Mudar os campos ITSM!';
    $Lang->{'Add a decision!'}              = 'Adicionar uma decis�o!';

    return 1;
}

1;
