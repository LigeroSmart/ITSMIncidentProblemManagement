# --
# Kernel/Language/es_ITSMTicket.pm - the spanish translation of ITSMTicket
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# Copyright (C) 2008 Aquiles Cohen
# --
# $Id: es_ITSMTicket.pm,v 1.9 2010-09-02 21:54:58 en Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::es_ITSMTicket;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.9 $) [1];

sub Data {
    my $Self = shift;

    my $Lang = $Self->{Translation};

    return if ref $Lang ne 'HASH';

    $Lang->{'Due Date'}                     = 'Fecha de Vencimiento';
    $Lang->{'Decision'}                     = 'Decisi�n';
    $Lang->{'Reason'}                       = 'Motivo';
    $Lang->{'Decision Date'}                = 'Fecha de Decisi�n';
    $Lang->{'Add decision to ticket'}       = 'A�adir decisi�n al ticket';
    $Lang->{'Decision Result'}              = 'Resultado de Decisi�n';
    $Lang->{'Review Required'}              = 'Revisi�n Requerida';
    $Lang->{'closed with workaround'}       = 'Cerrado con soluci�n provisional';
    $Lang->{'Additional ITSM Fields'}       = 'Campos ITSM Adicionales';
    $Lang->{'Change ITSM fields of ticket'} = 'Modificar campos ITSM del ticket';
    $Lang->{'Repair Start Time'}            = 'Fecha Inicial de Reparaci�n';
    $Lang->{'Recovery Start Time'}          = 'Fecha Inicial de Recuperaci�n';
    $Lang->{'Change the ITSM fields!'}      = 'Modificar los campos ITSM';
    $Lang->{'Add a decision!'}              = '�Agregue una decisi�n!';
    $Lang->{'Allows defining new types for ticket (if ticket type feature is enabled), e.g. incident, problem, change, ...'} = 'Permite definir tipos de ticket nuevos (si la funcionalidad tipo del ticket est� habilitada), por ejemplo: incidente, problema, cambio, ...';
    $Lang->{'Defines the the free key field number 13 for tickets to add a new ticket attribute.'} = 'Define el campo free key n�mero 13 para agregar un atributo nuevo a los tickets.';
    $Lang->{'Defines the free text field number 13 for tickets to add a new ticket attribute.'} = 'Define el campo free text n�mero 13 para agregar un atributo nuevo a los tickets.';
    $Lang->{'Defines the the free key field number 14 for tickets to add a new ticket attribute.'} = 'Define el campo free key n�mero 14 para agregar un atributo nuevo a los tickets.';
    $Lang->{'Defines the free text field number 14 for tickets to add a new ticket attribute.'} = 'Define el campo free text n�mero 14 para agregar un atributo nuevo a los tickets.';
    $Lang->{'Defines the default selection of the free text field number 14 for tickets (if more than one option is provided).'} = 'Define el valor seleccionado por default (si existe m�s de una opci�n) del campo free text n�mero 14 de los tickets.';
    $Lang->{'Defines the the free key field number 15 for tickets to add a new ticket attribute.'} = 'Define el campo free key n�mero 15 para agregar un atributo nuevo a los tickets.';
    $Lang->{'Defines the free text field number 15 for tickets to add a new ticket attribute.'} = 'Define el campo free text n�mero 15 para agregar un atributo nuevo a los tickets.';
    $Lang->{'Defines the default selection of the free text field number 15 for tickets (if more than one option is provided).'} = 'Define el valor seleccionado por default (si existe m�s de una opci�n) del campo free text n�mero 15 de los tickets.';
    $Lang->{'Defines the the free key field number 16 for tickets to add a new ticket attribute.'} = 'Define el campo free key n�mero 16 para agregar un atributo nuevo a los tickets.';
    $Lang->{'Defines the free text field number 16 for tickets to add a new ticket attribute.'} = 'Define el campo free text n�mero 16 para agregar un atributo nuevo a los tickets.';
    $Lang->{'Defines the default selection of the free text field number 16 for tickets (if more than one option is provided).'} = 'Define el valor seleccionado por default (si existe m�s de una opci�n) del campo free text n�mero 16 de los tickets.';
    $Lang->{'Defines the free time key field number 3 for tickets.'} = 'Define el campo free time key n�mero 3 para los tickets.';
    $Lang->{'Defines the years (in future and in past) which can get selected in free time field number 3.'} = 'Define los a�os (en futuro y pasado) que pueden ser seleccionados en el campo free time n�mero 3.';
    $Lang->{'Defines the free time key field number 4 for tickets.'} = 'Define el campo free time key n�mero 4 para los tickets.';
    $Lang->{'Defines the years (in future and in past) which can get selected in free time field number 4.'} = 'Define los a�os (en futuro y pasado) que pueden ser seleccionados en el campo free time n�mero 4.';
    $Lang->{'Defines the free time key field number 5 for tickets.'} = 'Define el campo free time key n�mero 5 para los tickets.';
    $Lang->{'Defines the years (in future and in past) which can get selected in free time field number 5.'} = 'Define los a�os (en futuro y pasado) que pueden ser seleccionados en el campo free time n�mero 5.';
    $Lang->{'Defines the free time key field number 6 for tickets.'} = 'Define el campo free time key n�mero 6 para los tickets.';
    $Lang->{'Defines the years (in future and in past) which can get selected in free time field number 6.'} = 'Define los a�os (en futuro y pasado) que pueden ser seleccionados en el campo free time n�mero 6.';
    $Lang->{'Defines the difference from now (in seconds) of the free time field number 6\'s default value.'} = 'Define la diferencia (en segundos) entre el tiempo actual y el valor definido como default para el campo free time n�mero 6.';
    $Lang->{'Frontend module registration for the agent interface.'} = 'Registro de m�dulo frontend para la interfaz del agente.';
    $Lang->{'Ticket free text options shown in the close ticket screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones del atributo free text de los tickets, mostradas en la ventana de cerrar ticket de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Ticket free text options shown in the ticket compose screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones del atributo free text de los tickets, mostradas en la ventana de redactar ticket de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Ticket free text options shown in the email ticket screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones del atributo free text de los tickets, mostradas en la ventana de ticket de e-mail de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Ticket free text options shown in the phone ticket screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones del atributo free text de los tickets, mostradas en la ventana de ticket telef�nico de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Sets the ticket type in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).'} = 'Mediante la interfaz de agente, establece un tipo para el ticket actual en la ventana de prioridad, accedida a trav�s del detalle de dicho ticket (Ticket::Type tiene que estar habilitado).';
    $Lang->{'Sets the service in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).'} = 'Mediante la interfaz de agente, establece un servicio para el ticket actual en la ventana de prioridad, accedida a trav�s del detalle de dicho ticket (Ticket::Type tiene que estar habilitado).';
    $Lang->{'Ticket free text options shown in the ticket search of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones del atributo free text de los tickets, mostradas en la ventana de b�squeda de tickets de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Ticket free time options shown in the ticket search of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones del atributo free time de los tickets, mostradas en la ventana de b�squeda de tickets de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Shows a link in the menu to add a free text field in the ticket zoom view of the agent interface.'} = 'Muesta un v�nculo en el men� para agregar al ticket un campo free text, en el detalle de dicho ticket, en la interfaz del agente.';
    $Lang->{'Shows a link in the menu to modify additional ITSM fields in the ticket zoom view of the agent interface.'} = 'Muesta un v�nculo en el men� para modificar campos ITSM adicionales, en el detalle del ticket correspondiente, en la interfaz del agente.';
    $Lang->{'Shows a link in the menu to change the decision of a ticket in its zoom view of the agent interface.'} = 'Muesta un v�nculo en el men� para modificar la decisi�n de un ticket, en el detalle de dicho ticket, en la interfaz del agente.';
    $Lang->{'Required permissions to use the additional ITSM field screen in the agent interface.'} = 'Permisos necesarios para usar la ventana de campos ITSM adicionales, en la interfaz del agente.';
    $Lang->{'Defines if a ticket lock is required in the additional ITSM field screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).'} = 'Determina si es necesario que el ticket est� bloqueado para acceder a la ventana de campos ITSM adicionales de la interfaz del agente (si el ticket no est� bloqueado a�n, se bloquea y el agente actual se convertir� autom�ticamente en su propietario).';
    $Lang->{'Sets the ticket type in the additional ITSM field screen of the agent interface (Ticket::Type needs to be activated).'} = 'Permite definir el tipo de ticket en la ventana de campos ITSM adicionales en la interfaz del agente (Ticket::Type tiene que estar habilitado).';
    $Lang->{'Sets the service in the additional ITSM field screen of the agent interface (Ticket::Service needs to be activated).'} = 'Permite definir el servicio en la ventana de campos ITSM adicionales en la interfaz del agente (Ticket::Service tiene que estar habilitado).';
    $Lang->{'Sets the ticket owner in the additional ITSM field screen of the agent interface.'} = 'Permite definir el propietario del ticket en la ventana de campos ITSM adicionales, en la interfaz del agente.';
    $Lang->{'Sets the ticket responsible in the additional ITSM field screen of the agent interface.'} = 'Permite definir el responsable del ticket en la ventana de campos ITSM adicionales, en la interfaz del agente.';
    $Lang->{'If a note is added by an agent, sets the state of a ticket in the additional ITSM field screen of the agent interface.'} = 'Si una nota es agregada por un agente, define el estado de un ticket en la ventana de campos ITSM adicionales, en la interfaz del agente.';
    $Lang->{'Defines the next state of a ticket after adding a note, in the additional ITSM field screen of the agent interface.'} = 'Define el siguiente estado de un ticket, luego de agregar una nota en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Lang->{'Defines the default next state of a ticket after adding a note, in the additional ITSM field screen of the agent interface.'} = 'Define el siguiente estado de un ticket por default, luego de agregar una nota en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Lang->{'Allows adding notes in the additional ITSM field screen of the agent interface.'} = 'Permite agregar notas en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Lang->{'Defines the default subject of a note in the additional ITSM field screen of the agent interface.'} = 'Define el asunto por default de una nota, en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Lang->{'Defines the default body of a note in the additional ITSM field screen of the agent interface.'} = 'Define el texto por default de una nota, en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Lang->{'Shows a list of all the involved agents on this ticket, in the additional ITSM field screen of the agent interface.'} = 'Muesta una lista de todos los agentes involucrados en este ticket, en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Lang->{'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the additional ITSM field screen of the agent interface.'} = 'Muestra una lista de todos los agentes posibles (aquellos con permisos para agregar notas en la fila o ticket), para determinar qui�n/qui�nes deben ser informados acerca de �sta nota, en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Lang->{'Defines the default type of the note in the additional ITSM field screen of the agent interface.'} = 'Define el tipo default de las notas en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Lang->{'Specifies the different note types that will be used in the system.'} = 'Especifica los diferentes tipos de notas que usar�n en el sistema.';
    $Lang->{'Shows the ticket priority options in the additional ITSM field screen of the agent interface.'} = 'Muestra las opciones de prioridad del ticket en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Lang->{'Defines the default ticket priority in the additional ITSM field screen of the agent interface.'} = 'Define la prioridad default del ticket en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Lang->{'Shows the title fields in the additional ITSM field screen of the agent interface.'} = 'Muestra los campos del t�tulo en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Lang->{'Ticket free text options shown in the additional ITSM field screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones free text del ticket, mostradas en la ventana de campos ITSM adicionales de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Ticket free time options shown in the additional ITSM field screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones free time del ticket, mostradas en la ventana de campos ITSM adicionales de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Article free text options shown in the additional ITSM field screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones free text del art�culo, mostradas en la ventana de campos ITSM adicionales de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Defines the history type for the additional ITSM field screen action, which gets used for ticket history.'} = 'Define el tipo de historial para la acci�n de la ventana de campos ITSM adicionales, misma que es usada por el historial del ticket.';
    $Lang->{'Defines the history comment for the additional ITSM field screen action, which gets used for ticket history.'} = 'Define el comentario del historial para la acci�n de la ventana de campos ITSM adicionales, misma que es usada por el historial del ticket.';
    $Lang->{'Required permissions to use the decision screen in the agent interface.'} = 'Permisos necesarios para usar la ventana de decisi�n, en la interfaz del agente.';
    $Lang->{'Defines if a ticket lock is required in the decision screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).'} = 'Determina si es necesario que el ticket est� bloqueado para acceder a la ventana de decisi�n de la interfaz del agente (si el ticket no est� bloqueado a�n, se bloquea y el agente actual se convertir� autom�ticamente en su propietario).';
    $Lang->{'Sets the ticket type in the decision screen of the agent interface (Ticket::Type needs to be activated).'} = 'Permite definir el tipo de ticket en la ventana de decisi�n en la interfaz del agente (Ticket::Type tiene que estar habilitado).';
    $Lang->{'Sets the service in the decision screen of the agent interface (Ticket::Service needs to be activated).'} = 'Permite definir el servicio en la ventana de decisi�n en la interfaz del agente (Ticket::Service tiene que estar habilitado).';
    $Lang->{'Sets the ticket owner in the decision screen of the agent interface.'} = 'Permite definir el propietario del ticket en la ventana de decisi�n, en la interfaz del agente.';
    $Lang->{'Sets the ticket responsible in the decision screen of the agent interface.'} = 'Permite definir el responsable del ticket en la ventana de decisi�n, en la interfaz del agente.';
    $Lang->{'If a note is added by an agent, sets the state of a ticket in the decision screen of the agent interface.'} = 'Si una nota es agregada por un agente, define el estado de un ticket en la ventana de decisi�n, en la interfaz del agente.';
    $Lang->{'Defines the next state of a ticket after adding a note, in the decision screen of the agent interface.'} = 'Define el siguiente estado de un ticket, luego de agregar una nota en la ventana de decisi�n de la interfaz del agente.';
    $Lang->{'Defines the default next state of a ticket after adding a note, in the decision screen of the agent interface.'} = 'Define el siguiente estado de un ticket por default, luego de agregar una nota en la ventana de decisi�n de la interfaz del agente.';
    $Lang->{'Allows adding notes in the decision screen of the agent interface.'} = 'Permite agregar notas en la ventana de decisi�n de la interfaz del agente.';
    $Lang->{'Defines the default subject of a note in the decision screen of the agent interface.'} = 'Define el asunto por default de una nota, en la ventana de decisi�n de la interfaz del agente.';
    $Lang->{'Defines the default body of a note in the decision screen of the agent interface.'} = 'Define el texto por default de una nota, en la ventana de decisi�n de la interfaz del agente.';
    $Lang->{'Shows a list of all the involved agents on this ticket, in the decision screen of the agent interface.'} = 'Muesta una lista de todos los agentes involucrados en este ticket, en la ventana de decisi�n de la interfaz del agente.';
    $Lang->{'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the decision screen of the agent interface.'} = 'Muestra una lista de todos los agentes posibles (aquellos con permisos para agregar notas en la fila o ticket), para determinar qui�n/qui�nes deben ser informados acerca de �sta nota, en la ventana de decisi�n de la interfaz del agente.';
    $Lang->{'Defines the default type of the note in the decision screen of the agent interface.'} = 'Define el tipo default de las notas en la ventana de decisi�n de la interfaz del agente.';
    $Lang->{'Shows the ticket priority options in the decision screen of the agent interface.'} = 'Muestra las opciones de prioridad del ticket en la ventana de decisi�n de la interfaz del agente.';
    $Lang->{'Defines the default ticket priority in the decision screen of the agent interface.'} = 'Define la prioridad default del ticket en la ventana de decisi�n de la interfaz del agente.';
    $Lang->{'Shows the title fields in the decision screen of the agent interface.'} = 'Muestra los campos del t�tulo en la ventana de decisi�n de la interfaz del agente.';
    $Lang->{'Ticket free text options shown in the decision screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones free text del ticket, mostradas en la ventana de decisi�n de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Ticket free time options shown in the decision screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones free time del ticket, mostradas en la ventana de decisi�n de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Article free text options shown in the decision screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} = 'Opciones free text del art�culo, mostradas en la ventana de decisi�n de la interfaz del agente. Las configuraciones posibles son: 0 = Deshabilitado, 1 = Habilitado, 2 = Habilitado y obligatorio.';
    $Lang->{'Defines the history type for the decision screen action, which gets used for ticket history.'} = 'Define el tipo de historial, para la acci�n de la ventana de decisi�n, misma que es usada por el historial del ticket.';
    $Lang->{'Defines the history comment for the decision screen action, which gets used for ticket history.'} = 'Define el comentario del historial, para la acci�n de la ventana de decisi�n, misma que es usada por el historial del ticket.';
    $Lang->{'Enables the stats module to generate statistics about the average of ITSM ticket solution.'} = 'Habilita, en el m�dulo de estad�sticas, la generaci�n de estad�sticas acerca del promedio de soluci�n de tickets ITSM.';
    $Lang->{'Enables the stats module to generate statistics about the average of ITSM ticket first level solution rate.'} = 'Habilita, en el m�dulo de estad�sticas, la generaci�n de estad�sticas acerca del tasa promedio de soluci�n de primer nivel de tickets ITSM.';

    return 1;
}

1;
