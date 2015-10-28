# --
# Copyright (C) 2001-2015 OTRS AG, http://otrs.com/
# --
# $origin: https://github.com/OTRS/otrs/blob/a11f0d7a1ed0174e796a11c9998cdb112d0624be/scripts/test/Selenium/Agent/AgentTicketPhone.t
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use utf8;

use vars (qw($Self));

# get selenium object
my $Selenium = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {

        # get helper object
        $Kernel::OM->ObjectParamAdd(
            'Kernel::System::UnitTest::Helper' => {
                RestoreSystemConfiguration => 1,
            },
        );
        my $Helper = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');

        $Kernel::OM->Get('Kernel::Config')->Set(
            Key   => 'CheckEmailAddresses',
            Value => 0,
        );

        # get sysconfig object
        my $SysConfigObject = $Kernel::OM->Get('Kernel::System::SysConfig');

        # do not check RichText
        $SysConfigObject->ConfigItemUpdate(
            Valid => 1,
            Key   => 'Frontend::RichText',
            Value => 0,
        );

        # do not check service and type
        $SysConfigObject->ConfigItemUpdate(
            Valid => 1,
            Key   => 'Ticket::Service',
# ---
# ITSM
# ---
#            Value => 0,
            Value => 1,
# ---
        );
        $SysConfigObject->ConfigItemUpdate(
            Valid => 1,
            Key   => 'Ticket::Type',
# ---
# ITSM
# ---
#            Value => 0,
            Value => 1,
# ---
        );

        # create test user and login
        my $TestUserLogin = $Helper->TestUserCreate(
# ---
# ITSM
# ---
#            Groups => [ 'admin', 'users' ],
            Groups => [ 'admin', 'users', 'itsm-service' ],
# ---
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        my $ScriptAlias = $Kernel::OM->Get('Kernel::Config')->Get('ScriptAlias');
        $Selenium->get("${ScriptAlias}index.pl?Action=AgentTicketPhone");

        # check page
        for my $ID (
            qw(FromCustomer CustomerID Dest Subject RichText FileUpload
            NextStateID PriorityID submitRichText)
# ---
# ITSM
# ---
            , qw(TypeID ServiceID OptionLinkTicket DynamicField_ITSMImpact)
# ---
            )
        {
            my $Element = $Selenium->find_element( "#$ID", 'css' );
            $Element->is_enabled();
            $Element->is_displayed();
        }

        # check client side validation
        my $Element = $Selenium->find_element( "#Subject", 'css' );
        $Element->send_keys("");
        $Element->submit();

        $Self->Is(
            $Selenium->execute_script(
                "return \$('#Subject').hasClass('Error')"
            ),
            '1',
            'Client side validation correctly detected missing input value',
        );

        $Selenium->get("${ScriptAlias}index.pl?Action=AgentTicketPhone");

        # get test user ID
        my $TestUserID = $Kernel::OM->Get('Kernel::System::User')->UserLookup(
            UserLogin => $TestUserLogin,
        );

        # add test customer for testing
        my $TestCustomer = 'Customer' . $Helper->GetRandomID();
        my $UserLogin    = $Kernel::OM->Get('Kernel::System::CustomerUser')->CustomerUserAdd(
            Source         => 'CustomerUser',
            UserFirstname  => $TestCustomer,
            UserLastname   => $TestCustomer,
            UserCustomerID => $TestCustomer,
            UserLogin      => $TestCustomer,
            UserEmail      => "$TestCustomer\@localhost.com",
            ValidID        => 1,
            UserID         => $TestUserID,
        );
# ---
# ITSM
# ---
        # get service object
        my $ServiceObject = $Kernel::OM->Get('Kernel::System::Service');

        # create test service
        my $ServiceName = "Selenium" . $Helper->GetRandomID();
        my $ServiceID   = $ServiceObject->ServiceAdd(
            Name        => $ServiceName,
            ValidID     => 1,
            Comment     => 'Selenium Test Service',
            TypeID      => 2,
            Criticality => '5 very high',
            UserID      => $TestUserID,
        );

        $Self->True(
            $ServiceID,
            "Created service ID - $ServiceID",
        );

        # link test service with test customer
        my $ServiceMemberAddSuccess = $ServiceObject->CustomerUserServiceMemberAdd(
            CustomerUserLogin => $TestCustomer,
            ServiceID         => $ServiceID,
            Active            => 1,
            UserID            => $TestUserID,
        );

        $Self->True(
            $ServiceMemberAddSuccess,
            "Added service ID $ServiceID to CustomerUser $TestCustomer.",
        );

# ---

        # create test phone ticket
        my $AutoCompleteString = "\"$TestCustomer $TestCustomer\" <$TestCustomer\@localhost.com> ($TestCustomer)";
        my $TicketSubject      = "Selenium Ticket";
        my $TicketBody         = "Selenium body test";
# ---
# ITSM
# ---
        $Selenium->execute_script("\$('#TypeID').val('1').trigger('redraw.InputField').trigger('change');");
# ---
        $Selenium->find_element( "#FromCustomer", 'css' )->send_keys($TestCustomer);
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $("li.ui-menu-item:visible").length' );
        $Selenium->find_element("//*[text()='$AutoCompleteString']")->click();
# ---
# ITSM
# ---

        $Selenium->WaitFor( JavaScript => "return \$('#ServiceID option[value=\"$ServiceID\"]').length;" );
        $Selenium->execute_script("\$('#ServiceID').val('$ServiceID').trigger('redraw.InputField').trigger('change');");
        $Selenium->WaitFor( JavaScript => 'return $("#ServiceIncidentState").length' );

        # check for service incident state field
        my $ServiceIncidentStateElement = $Selenium->find_element( "#ServiceIncidentState", 'css' );
        $ServiceIncidentStateElement->is_enabled();
        $ServiceIncidentStateElement->is_displayed();

        $Selenium->WaitFor( JavaScript => "return \$('#DynamicField_ITSMImpact option[value=\"3 normal\"]').length;" );
        $Selenium->WaitFor( JavaScript => "return \$('#PriorityID option[value=\"4\"]').length;" );

        # test priority update based on impact value
        $Self->Is(
            $Selenium->find_element( '#PriorityID', 'css' )->get_value(),
            '4',
            "#PriorityID stored value",
        );

        $Selenium->execute_script(
            "\$('#DynamicField_ITSMImpact').val('1 very low').trigger('redraw.InputField').trigger('change');");

        # wait for ajax loading icon to show up
        $Selenium->WaitFor( JavaScript => "return \$('#AJAXLoaderPriorityID:visible').length;" );

        # wait for ajax loading icon to hide
        $Selenium->WaitFor( JavaScript => "return !\$('#AJAXLoaderPriorityID:visible').length;" );

        $Self->Is(
            $Selenium->find_element( '#PriorityID', 'css' )->get_value(),
            '3',
            "#PriorityID updated value",
        );
# ---
        $Selenium->execute_script("\$('#Dest').val('2||Raw').trigger('redraw.InputField').trigger('change');");
        $Selenium->find_element( "#Subject",  'css' )->send_keys($TicketSubject);
        $Selenium->find_element( "#RichText", 'css' )->send_keys($TicketBody);
        $Selenium->find_element( "#Subject",  'css' )->submit();

        # Wait until form has loaded, if neccessary
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $("form").length' );

        # search for new created ticket on AgentTicketZoom screen
        my %TicketIDs = $Kernel::OM->Get('Kernel::System::Ticket')->TicketSearch(
            Result         => 'HASH',
            Limit          => 1,
            CustomerUserID => $TestCustomer,
        );
        my $TicketNumber = (%TicketIDs)[1];
        my $TicketID     = (%TicketIDs)[0];

        $Self->True(
            $TicketID,
            "Ticket was created and found",
        );

        $Self->True(
            index( $Selenium->get_page_source(), $TicketNumber ) > -1,
            "Ticket with ticket id $TicketID is created",
        );

        # go to ticket zoom page of created test ticket
        $Selenium->get("${ScriptAlias}index.pl?Action=AgentTicketZoom;TicketID=$TicketID");

        # check if test ticket values are genuine
        $Self->True(
            index( $Selenium->get_page_source(), $TicketSubject ) > -1,
            "$TicketSubject found on page",
        );
        $Self->True(
            index( $Selenium->get_page_source(), $TicketBody ) > -1,
            "$TicketBody found on page",
        );
        $Self->True(
            index( $Selenium->get_page_source(), $TestCustomer ) > -1,
            "$TestCustomer found on page",
        );
# ---
# ITSM
# ---
        # force sub menus to be visible in order to be able to click one of the links
        $Selenium->execute_script("\$('.Cluster ul ul').addClass('ForceVisible');");

        # click on history and switch window
        $Selenium->find_element("//*[text()='History']")->click();

        my $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        # check for ITSM updated fields
        for my $UpdateText (qw(Impact Criticality)) {
            $Self->True(
                index( $Selenium->get_page_source(), "Updated: FieldName=ITSM$UpdateText" ) > -1,
                "DynamicFieldUpdate $UpdateText - found",
            );
        }
# ---

        # delete created test ticket
        my $Success = $Kernel::OM->Get('Kernel::System::Ticket')->TicketDelete(
            TicketID => $TicketID,
            UserID   => 1,
        );
        $Self->True(
            $Success,
            "Ticket with ticket id $TicketID is deleted",
        );
# ---
# ITSM
# ---
        # delete test service - test customer connection
        $Success = $Kernel::OM->Get('Kernel::System::DB')->Do(
            SQL => "DELETE FROM service_customer_user WHERE service_id = $ServiceID",
        );
        $Self->True(
            $Success,
            "Delete service-customer connection",
        );

        # delete test service preferences
        $Success = $Kernel::OM->Get('Kernel::System::DB')->Do(
            SQL => "DELETE FROM service_preferences WHERE service_id = $ServiceID",
        );
        $Self->True(
            $Success,
            "Deleted Service preferences - $ServiceID",
        );

        # delete created test service
        $Success = $Kernel::OM->Get('Kernel::System::DB')->Do(
            SQL => "DELETE FROM service WHERE id = $ServiceID",
        );
        $Self->True(
            $Success,
            "Delete service ID - $ServiceID",
        );
# ---

        # delete created test customer user
        my $DBObject = $Kernel::OM->Get('Kernel::System::DB');
        $TestCustomer = $DBObject->Quote($TestCustomer);
        $Success      = $DBObject->Do(
            SQL  => "DELETE FROM customer_user WHERE login = ?",
            Bind => [ \$TestCustomer ],
        );
        $Self->True(
            $Success,
            "Delete customer user - $TestCustomer",
        );

        # make sure the cache is correct.
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp( Type => 'Ticket' );
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp( Type => 'CustomerUser' );
# ---
# ITSM
# ---
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp( Type => 'Service' );
# ---

    }
);

1;
