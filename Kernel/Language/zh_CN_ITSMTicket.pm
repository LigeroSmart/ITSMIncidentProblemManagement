# --
# Kernel/Language/zh_CN_ITSMTicket.pm - the Chinese simple translation of ITSMTicket
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: zh_CN_ITSMTicket.pm,v 1.1.2.1 2009-10-14 20:45:49 ub Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::zh_CN_ITSMTicket;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.1.2.1 $) [1];

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'Due Date'}                     = '��ֹ����';
    $Lang->{'Decision'}                     = '����';
    $Lang->{'Reason'}                       = '����';
    $Lang->{'Decision Date'}                = '��������';
    $Lang->{'Add decision to ticket'}       = '���Ӿ����� Ticket';
    $Lang->{'Decision Result'}              = '�������';
    $Lang->{'Review Required'}              = '�������';
    $Lang->{'closed with workaround'}       = '����������ر�';
    $Lang->{'Additional ITSM Fields'}       = '����� ITSM ��';
    $Lang->{'Change ITSM fields of ticket'} = 'Ϊ�� Ticket ���� ITSM ��';
    $Lang->{'Repair Start Time'}            = '�޸���ʼʱ��';
    $Lang->{'Recovery Start Time'}          = '�ָ�����ʱ��';
    $Lang->{'Change the ITSM fields!'}      = '���� ITSM ��!';
    $Lang->{'Add a decision!'}              = '����һ������!';
# Add by Never
    $Lang->{'Approved'}                     = '��׼';
    $Lang->{'Pending'}                      = '����';
    $Lang->{'Postponed'}                    = '�Ƴ�';
    $Lang->{'Pre-approved'}                 = 'Ԥ�Ⱥ�׼';
    $Lang->{'Rejected'}                     = '�ܾ�';

    return 1;
}

1;
