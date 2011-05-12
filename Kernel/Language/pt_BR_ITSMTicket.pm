# --
# Kernel/Language/pt_BR_ITSMTicket.pm - translation file
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: pt_BR_ITSMTicket.pm,v 1.9 2011-05-12 11:51:36 ub Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::pt_BR_ITSMTicket;

use strict;

sub Data {
    my $Self = shift;

    # Template: AgentTicketActionCommon
    $Self->{Translation}->{'Change Decision of Ticket'} = 'Alterar Decis�o de Chamado';
    $Self->{Translation}->{'Change ITSM fields of ticket'} = 'Alterar os campos ITSM do chamado';
    $Self->{Translation}->{'Impact'} = 'Impacto';

    # Template: AgentTicketAddtlITSMField

    # Template: AgentTicketDecision

    # Template: AgentTicketEmail
    $Self->{Translation}->{'Link ticket'} = 'Associar chamado';

    # Template: AgentTicketOverviewMedium

    # Template: AgentTicketOverviewPreview
    $Self->{Translation}->{'Criticality'} = 'Criticalidade';

    # Template: AgentTicketPhone

    # Template: AgentTicketPrint

    # Template: AgentTicketZoom
    $Self->{Translation}->{'Decision Result'} = 'Decis�o Resultante';
    $Self->{Translation}->{'Decision Date'} = 'Data de Decis�o';
    $Self->{Translation}->{'Repair Start Time'} = 'Hor�rio Inicial de Reparo';
    $Self->{Translation}->{'Recovery Start Time'} = 'Hor�rio Inicial de Recupera��o';
    $Self->{Translation}->{'Due date'} = 'Data vencimento';

    # Template: CustomerTicketPrint

    # Template: CustomerTicketZoom

    # SysConfig
    $Self->{Translation}->{'Add a decision!'} = 'Adicionar uma decis�o!';
    $Self->{Translation}->{'Additional ITSM Fields'} = 'Campos adicionais ITSM';
    $Self->{Translation}->{'Allows adding notes in the additional ITSM field screen of the agent interface.'} = 'Permite adicionar notas na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Allows adding notes in the decision screen of the agent interface.'} = 'Permite adicionar notas na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Article free text options shown in the additional ITSM field screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Op��es de texto livre de artigo mostradas na tela de campos adicionais ITSM da interface de atendente. Configura��es poss�veis: 0 = desativado, 1 = ativado, 2 = Habilitado e necess�ria.';
    $Self->{Translation}->{'Article free text options shown in the decision screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Op��es de texto livre de artigo mostradas na tela de decis�o da interface de atendente. Configura��es poss�veis: 0 = desativado, 1 = ativado, 2 = Habilitado e necess�ria.';
    $Self->{Translation}->{'Change the ITSM fields!'} = 'Alterar campos ITSM!';
    $Self->{Translation}->{'Decision'} = 'Decis�o';
    $Self->{Translation}->{'Defines if a ticket lock is required in the additional ITSM field screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).'} = 'Define se um bloqueio de chamado � exigido na tela de campos adicionais ITSM da interface de atendente (se o chamado n�o estiver bloqueado ainda, o chamado ser� bloqueadoe o atendente atual ser� automaticamente definido como seu propriet�rio).';
    $Self->{Translation}->{'Defines if a ticket lock is required in the decision screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).'} = 'Define se um bloqueio de chamado � exigido na tela de decis�o da interface de atendente (se o chamado n�o estiver bloqueado ainda, o chamado ser� bloqueadoe o atendente atual ser� automaticamente definido como seu propriet�rio).';
    $Self->{Translation}->{'Defines the default body of a note in the additional ITSM field screen of the agent interface.'} = 'Define o corpo padr�o de uma nota na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Defines the default body of a note in the decision screen of the agent interface.'} = 'Define o corpo padr�o de uma nota na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Defines the default next state of a ticket after adding a note, in the additional ITSM field screen of the agent interface.'} = 'Define o pr�ximo estado padr�o de um chamado ap�s a adi��o de uma nota, na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Defines the default next state of a ticket after adding a note, in the decision screen of the agent interface.'} = 'Define o pr�ximo estado padr�o de um chamado ap�s a adi��o de uma nota, na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Defines the default subject of a note in the additional ITSM field screen of the agent interface.'} = 'Define o assunto padr�o de uma nota na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Defines the default subject of a note in the decision screen of the agent interface.'} = 'Define o assunto padr�o de uma nota na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Defines the default ticket priority in the additional ITSM field screen of the agent interface.'} = 'Define a prioridade padr�o de chamado na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Defines the default ticket priority in the decision screen of the agent interface.'} = 'Define a prioridade padr�o de chamado na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Defines the default type of the note in the additional ITSM field screen of the agent interface.'} = 'Define o tipo padr�o de uma nota na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Defines the default type of the note in the decision screen of the agent interface.'} = 'Define o tipo padr�o de uma nota na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Defines the history comment for the additional ITSM field screen action, which gets used for ticket history.'} = 'Define o coment�rio de hist�rico para a a��o de campos adicionais ITSM, que � usado no hist�rico do chamado.';
    $Self->{Translation}->{'Defines the history comment for the decision screen action, which gets used for ticket history.'} = 'Define o coment�rio de hist�rico para a a��o de decis�o, que � usado no hist�rico do chamado.';
    $Self->{Translation}->{'Defines the history type for the additional ITSM field screen action, which gets used for ticket history.'} = 'Define o tipo de hist�rico para a a��o de campos adicionais ITSM, que � usado no hist�rico do chamado.';
    $Self->{Translation}->{'Defines the history type for the decision screen action, which gets used for ticket history.'} = 'Define o tipo de hist�rico para a a��o de decis�o, que � usado no hist�rico do chamado.';
    $Self->{Translation}->{'Defines the next state of a ticket after adding a note, in the additional ITSM field screen of the agent interface.'} = 'Define o pr�ximo estado de um chamado ap�s a adi��o de uma nota, na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Defines the next state of a ticket after adding a note, in the decision screen of the agent interface.'} = 'Define o pr�ximo estado de um chamado ap�s a adi��o de uma nota, na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Defines the the free key field number 13 for tickets to add a new ticket attribute.'} = 'Define o campo-chave livre n�mero 13 para chamados para adicionar um novo atributo de chamado.';
    $Self->{Translation}->{'Defines the the free key field number 14 for tickets to add a new ticket attribute.'} = 'Define o campo-chave livre n�mero 14 para chamados para adicionar um novo atributo de chamado.';
    $Self->{Translation}->{'Defines the the free key field number 15 for tickets to add a new ticket attribute.'} = 'Define o campo-chave livre n�mero 15 para chamados para adicionar um novo atributo de chamado.';
    $Self->{Translation}->{'Defines the the free key field number 16 for tickets to add a new ticket attribute.'} = 'Define o campo-chave livre n�mero 16 para chamados para adicionar um novo atributo de chamado.';
    $Self->{Translation}->{'Enables the stats module to generate statistics about the average of ITSM ticket first level solution rate.'} = 'Permite que o m�dulo de estat�sticas gere estat�sticas sobre o n�vel m�dio de chamados ITSM no primeiro n�vel de solu��o.';
    $Self->{Translation}->{'Enables the stats module to generate statistics about the average of ITSM ticket solution.'} = 'Permite que o m�dulo de estat�sticas gere estat�sticas sobre o n�vel m�dio de chamados ITSM no primeiro n�vel de solu��o.';
    $Self->{Translation}->{'If a note is added by an agent, sets the state of a ticket in the additional ITSM field screen of the agent interface.'} = 'Se uma nota � adicionada por um atendente, define o estado de um chamado na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'If a note is added by an agent, sets the state of a ticket in the decision screen of the agent interface.'} = 'Se uma nota � adicionada por um atendente, define o estado de um chamado na tela de decis�o da interface dd atendente.';
    $Self->{Translation}->{'Required permissions to use the additional ITSM field screen in the agent interface.'} = 'Permiss�es necess�rias para usar a tela de campos adicionais ITSM na interface de atendente.';
    $Self->{Translation}->{'Required permissions to use the decision screen in the agent interface.'} = 'Permiss�es necess�rias para usar a tela de decis�o na interface de atendente.';
    $Self->{Translation}->{'Sets the service in the additional ITSM field screen of the agent interface (Ticket::Service needs to be activated).'} = 'Define o servi�o adicional na tela de campos adicionais ITSM de interface do atendente (Chamado::Servi�o precisa estar ativado).';
    $Self->{Translation}->{'Sets the service in the decision screen of the agent interface (Ticket::Service needs to be activated).'} = 'Define o servi�o na tela de decis�o da interface de atendente (Chamado::Servi�o precisa estar ativado).';
    $Self->{Translation}->{'Sets the ticket owner in the additional ITSM field screen of the agent interface.'} = 'Define o propriet�rio do chamado na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Sets the ticket owner in the decision screen of the agent interface.'} = 'Define o propriet�rio do chamado na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Sets the ticket responsible in the additional ITSM field screen of the agent interface.'} = 'Define o respons�vel pelo chamado de tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Sets the ticket responsible in the decision screen of the agent interface.'} = 'Define o respons�vel pelo chamado na tela decis�o da interface de atendente.';
    $Self->{Translation}->{'Sets the ticket type in the additional ITSM field screen of the agent interface (Ticket::Type needs to be activated).'} = 'Define o tipo de chamado na tela de campos adicionais ITSM da interface de atendente. (Chamado::Tipo precisa estar ativado).';
    $Self->{Translation}->{'Sets the ticket type in the decision screen of the agent interface (Ticket::Type needs to be activated).'} = 'Define o tipo de chamado na tela de decis�o da interface de atendente (Chamado::Tipo precisa estar ativado).';
    $Self->{Translation}->{'Shows a link in the menu to change the decision of a ticket in its zoom view of the agent interface.'} = 'Mostra um link no menu para alterar a decis�o de um chamado na sua vis�o em detalhes na interface de atendente.';
    $Self->{Translation}->{'Shows a link in the menu to modify additional ITSM fields in the ticket zoom view of the agent interface.'} = 'Mostra um link no menu para modificar campos adicionais ITSM na vis�o em detalhes de um chamado na interface de atendente.';
    $Self->{Translation}->{'Shows a list of all the involved agents on this ticket, in the additional ITSM field screen of the agent interface.'} = 'Mostra uma lista de todos os atendentes envolvidos neste chamado, na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Shows a list of all the involved agents on this ticket, in the decision screen of the agent interface.'} = 'Mostra uma lista de todos os atendentes envolvidos neste chamado, na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the additional ITSM field screen of the agent interface.'} = 'Mostra uma lista de todos os atendentes poss�veis (todos os atendentes com permiss�es de nota na fila/chamado) para determinar quem deve ser informado sobre esta nota, na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the decision screen of the agent interface.'} = 'Mostra uma lista de todos os atendentes poss�veis (todos os atendentes com permiss�es nota na fila/chamado) para determinar quem deve ser informado sobre esta nota, na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Shows the ticket priority options in the additional ITSM field screen of the agent interface.'} = 'Mostra as op��es de prioridade de chamado na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Shows the ticket priority options in the decision screen of the agent interface.'} = 'Mostra as op��es de prioridade de chamado na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Shows the title fields in the additional ITSM field screen of the agent interface.'} = 'Mostra os campos de t�tulo na tela de campos adicionais ITSM da interface de atendente.';
    $Self->{Translation}->{'Shows the title fields in the decision screen of the agent interface.'} = 'Mostra os campos de t�tulo na tela de decis�o da interface de atendente.';
    $Self->{Translation}->{'Ticket free text options shown in the additional ITSM field screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Op��es de texto livre de chamado mostrandas na tela de campos adicionais ITSM da interface de atendente. Configura��es poss�veis: 0 = Desativado, 1 = Ativado, 2 = Habilitado e necess�rio.';
    $Self->{Translation}->{'Ticket free text options shown in the decision screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Op��es de texto livre de chamado mostrandas na tela de decis�o da interface de atendente. Configura��es poss�veis: 0 = Desativado, 1 = Ativado, 2 = Habilitado e necess�rio.';
    $Self->{Translation}->{'Ticket free time options shown in the additional ITSM field screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Op��es de tempo livre de chamado mostrandas na tela de campos adicionais ITSM da interface de atendente. Configura��es poss�veis: 0 = Desativado, 1 = Ativado, 2 = Habilitado e necess�rio.';
    $Self->{Translation}->{'Ticket free time options shown in the decision screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Op��es de tempo livre de chamado mostrandas na tela de decis�o da interface de atendente. Configura��es poss�veis: 0 = Desativado, 1 = Ativado, 2 = Habilitado e necess�rio.';

    #
    # OBSOLETE ENTRIES FOR REFERENCE, DO NOT TRANSLATE!
    #
    $Self->{Translation}->{'Add decision to ticket'} = 'Adicionar decis�o ao chamado';
    $Self->{Translation}->{'Reason'} = 'Raz�o';
    $Self->{Translation}->{'Review Required'} = 'Revis�o Requisitada';
    $Self->{Translation}->{'closed with workaround'} = 'fechado com solu��o de contorno';

}

1;
