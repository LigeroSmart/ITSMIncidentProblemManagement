# --
# Kernel/Language/ru_ITSMTicket.pm - the russian translation of ITSMTicket
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# Copyright (C) 2008 Egor Tsilenko <bg8s at symlink.ru>
# --
# $Id: ru_ITSMTicket.pm,v 1.1 2008-08-15 14:48:02 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::Language::ru_ITSMTicket;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.1 $) [1];

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'Due Date'}                     = '���� ����������';
    $Lang->{'Decision'}                     = '�������';
    $Lang->{'Reason'}                       = '�������';
    $Lang->{'Decision Date'}                = '���� �������';
    $Lang->{'Add decision to ticket'}       = '������� ������� �� ������';
    $Lang->{'Decision Result'}              = '��������� �������';
    $Lang->{'Review Required'}              = '��������� ��������';
    $Lang->{'closed with workaround'}       = '������� � �������� ��������';
    $Lang->{'Additional ITSM Fields'}       = '�������������� ITSM ����';
    $Lang->{'Change ITSM fields of ticket'} = '�������� ITSM ���� ������';
    $Lang->{'Repair Start Time'}            = '���� ������ �����';
    $Lang->{'Recovery Start Time'}          = '���� �������������� �������';

    return 1;
}

1;
