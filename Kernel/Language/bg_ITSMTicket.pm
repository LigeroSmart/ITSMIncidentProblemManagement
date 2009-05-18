# --
# Kernel/Language/bg_ITSMTicket.pm - the bulgarian translation of ITSMTicket
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# Copyright (C) 2007-2008 Milen Koutev
# --
# $Id: bg_ITSMTicket.pm,v 1.5 2009-05-18 09:55:54 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::bg_ITSMTicket;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.5 $) [1];

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'Due Date'}                     = '������ ����';
    $Lang->{'Decision'}                     = '�������';
    $Lang->{'Reason'}                       = '���������';
    $Lang->{'Decision Date'}                = '���� �� ��������';
    $Lang->{'Add decision to ticket'}       = '������ ������� ��� ������';
    $Lang->{'Decision Result'}              = '�������� �� ���������';
    $Lang->{'Review Required'}              = '������� �����������';
    $Lang->{'closed with workaround'}       = '��������� � ������� �������';
    $Lang->{'Additional ITSM Fields'}       = '������������ ITSM ������';
    $Lang->{'Change ITSM fields of ticket'} = '������� ITSM �������� �� ������';
    $Lang->{'Repair Start Time'}            = '����� �� ���������� �� �������';
    $Lang->{'Recovery Start Time'}          = '����� �� ���������� �� ����������������';
    $Lang->{'Change the ITSM fields!'}      = '';
    $Lang->{'Add a decision!'}              = '';

    return 1;
}

1;
