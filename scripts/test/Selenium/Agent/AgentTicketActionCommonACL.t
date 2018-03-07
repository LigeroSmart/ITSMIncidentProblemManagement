# --
# Copyright (C) 2001-2018 OTRS AG, http://otrs.com/
# --
# $origin: otrs - 7065477b2febac0723cc317638c39a549771f13d - scripts/test/Selenium/Agent/AgentTicketActionCommonACL.t
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --
use strict;
use warnings;
use utf8;
use vars (qw($Self));

# note: this UT covers bug #11874 - Restrict service based on state when posting a note

# get selenium object
my $Selenium = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {
        $Kernel::OM->ObjectParamAdd(
            'Kernel::System::UnitTest::Helper' => {
                RestoreSystemConfiguration => 1,
            },
        );
        my $Helper = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');

        my $ConfigObject    = $Kernel::OM->Get('Kernel::Config');
        my $SysConfigObject = $Kernel::OM->Get('Kernel::System::SysConfig');

        $ConfigObject->Set(
            Key   => 'CheckMXRecord',
            Value => 0,
        );

        $SysConfigObject->ConfigItemUpdate(
            Valid => 1,
            Key   => 'Ticket::Service',
            Value => 1,
        );
        $ConfigObject->Set(
            Key   => 'Ticket::Service',
            Value => 1,
        );

        $SysConfigObject->ConfigItemUpdate(
            Valid => 1,
            Key   => 'Ticket::Frontend::AgentTicketNote###Service',
            Value => 1,
        );
        $SysConfigObject->ConfigItemUpdate(
            Valid => 1,
            Key   => 'Ticket::Frontend::AgentTicketNote###Queue',
            Value => 1,
        );
        $SysConfigObject->ConfigItemUpdate(
            Valid => 1,
            Key   => 'Ticket::Frontend::AgentTicketNote###Priority',
            Value => 1,
        );

        my $RandomID = $Helper->GetRandomID();

        # Create test ticket dynamic field.
        my $DynamicFieldObject = $Kernel::OM->Get('Kernel::System::DynamicField');
        my $DynamicFieldID     = $DynamicFieldObject->DynamicFieldAdd(
            Name       => 'Field' . $RandomID,
            Label      => 'Field' . $RandomID,
            FieldOrder => 99998,
            FieldType  => 'Dropdown',
            ObjectType => 'Ticket',
            Config     => {
                DefaultValue   => '',
                PossibleNone   => 1,
                PossibleValues => {
                    0 => 'No',
                    1 => 'Yes',
                },
                TranslatableValues => 1,
            },
            Reorder => 0,
            ValidID => 1,
            UserID  => 1,
        );
        $Self->True(
            $DynamicFieldID,
            "DynamicFieldAdd - Added dynamic field ($DynamicFieldID)",
        );

        my $DynamicFieldID2 = $DynamicFieldObject->DynamicFieldAdd(
            Name       => 'Field2' . $RandomID,
            Label      => 'Field2' . $RandomID,
            FieldOrder => 99999,
            FieldType  => 'Dropdown',
            ObjectType => 'Ticket',
            Config     => {
                DefaultValue   => '',
                PossibleNone   => 1,
                PossibleValues => {
                    a => 'a',
                    b => 'b',
                    c => 'c',
                    d => 'd',
                },
                TranslatableValues => 1,
            },
            Reorder => 0,
            ValidID => 1,
            UserID  => 1,
        );
        $Self->True(
            $DynamicFieldID2,
            "DynamicFieldAdd - Added dynamic field ($DynamicFieldID)",
        );

        $SysConfigObject->ConfigItemUpdate(
            Valid => 1,
            Key   => 'Ticket::Frontend::AgentTicketNote###DynamicField',
            Value => {
                'Field' . $RandomID  => 1,
                'Field2' . $RandomID => 1,
            },
        );

        # get ACL object
        my $ACLObject = $Kernel::OM->Get('Kernel::System::ACL::DB::ACL');

        # import test ACL
        $ACLObject->ACLImport(
            Content => <<"EOF",
- ChangeBy: root\@localhost
  ChangeTime: 2016-02-16 03:08:58
  Comment: ''
  ConfigChange:
    Possible:
      Ticket:
        Service:
        - UT Test Service 1 $RandomID
  ConfigMatch:
    Properties:
      Ticket:
        State:
        - new
  CreateBy: root\@localhost
  CreateTime: 2016-02-16 02:55:35
  Description: ''
  ID: '1'
  Name: ThisIsAUnitTestACL-1
  StopAfterMatch: 0
  ValidID: '1'
- ChangeBy: root\@localhost
  ChangeTime: 2016-02-16 03:10:05
  Comment: ''
  ConfigChange:
    Possible:
      Ticket:
        SLA:
        - UT Test SLA 1 $RandomID
  ConfigMatch:
    Properties:
      DynamicField:
        DynamicField_Field$RandomID:
        - '0'
  CreateBy: root\@localhost
  CreateTime: 2016-02-16 03:10:05
  Description: ''
  ID: '2'
  Name: ThisIsAUnitTestACL-2
  StopAfterMatch: 0
  ValidID: '1'
- ChangeBy: root\@localhost
  ChangeTime: 2016-02-16 03:11:05
  Comment: ''
  ConfigChange:
    PossibleNot:
      Ticket:
        Queue:
        - 'Junk'
  ConfigMatch:
    Properties:
      Ticket:
        Priority:
        - '2 low'
  CreateBy: root\@localhost
  CreateTime: 2016-02-16 03:11:05
  Description: ''
  ID: '3'
  Name: ThisIsAUnitTestACL-3
  StopAfterMatch: 0
  ValidID: '1'
- ChangeBy: root\@localhost
  ChangeTime: 2017-07-10 09:00:00
  Comment: ''
  ConfigChange:
    Possible:
      Ticket:
        DynamicField_Field2$RandomID:
        - 'a'
        - 'b'
  ConfigMatch:
    Properties:
      DynamicField:
        DynamicField_Field$RandomID:
        - '0'
  CreateBy: root\@localhost
  CreateTime: 2017-07-10 09:00:00
  Description: ''
  ID: '5'
  Name: ThisIsAUnitTestACL-4
  StopAfterMatch: 0
  ValidID: '1'
EOF
            OverwriteExistingEntities => 1,
            UserID                    => 1,
        );

        # create test user and login
        my $TestUserLogin = $Helper->TestUserCreate(
            Groups => [ 'admin', 'users' ],
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        # get script alias
        my $ScriptAlias = $ConfigObject->Get('ScriptAlias');

        # after login, we need to navigate to the ACL deployment to make the imported ACL work
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AdminACL;Subaction=ACLDeploy");
        $Self->False(
            index(
                $Selenium->get_page_source(),
                'ACL information from database is not in sync with the system configuration, please deploy all ACLs.'
                )
                > -1,
            "ACL deployment successful."
        );

        # add a customer
        my $CustomerUserLogin = $Kernel::OM->Get('Kernel::System::CustomerUser')->CustomerUserAdd(
            UserFirstname  => 'Huber',
            UserLastname   => 'Manfred',
            UserCustomerID => 'A124',
            UserLogin      => 'customeruser_' . $Helper->GetRandomID(),
            UserPassword   => 'some-pass',
            UserEmail      => $Helper->GetRandomID() . '@localhost.com',
            ValidID        => 1,
            UserID         => 1,
        );

        # get ticket object
        my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');

        # create test ticket
        my $TicketID = $TicketObject->TicketCreate(
            Title        => 'Selenium Ticket',
            Queue        => 'Raw',
            Lock         => 'unlock',
            Priority     => '3 normal',
            State        => 'new',
            CustomerID   => '123465',
            CustomerUser => $CustomerUserLogin,
            OwnerID      => 1,
            UserID       => 1,
        );
        $Self->True(
            $TicketID,
            "TicketCreate - ID $TicketID",
        );

        # Set test ticket dynamic field to zero-value, please see bug#12273 for more information.
        my $DynamicFieldValueObject = $Kernel::OM->Get('Kernel::System::DynamicFieldValue');

        my $Success = $DynamicFieldValueObject->ValueSet(
            FieldID  => $DynamicFieldID,
            ObjectID => $TicketID,
            Value    => [
                {
                    ValueText => '0',
                },
            ],
            UserID => 1,
        );

        # Create some test services.
        my $ServiceObject = $Kernel::OM->Get('Kernel::System::Service');
# ---
# ITSMIncidentProblemManagement
# ---
        # get the list of service types from general catalog
        my $ServiceTypeList = $Kernel::OM->Get('Kernel::System::GeneralCatalog')->ItemList(
            Class => 'ITSM::Service::Type',
        );

        # build a lookup hash
        my %ServiceTypeName2ID = reverse %{ $ServiceTypeList };

        # get the list of sla types from general catalog
        my $SLATypeList = $Kernel::OM->Get('Kernel::System::GeneralCatalog')->ItemList(
            Class => 'ITSM::SLA::Type',
        );

        # build a lookup hash
        my %SLATypeName2ID = reverse %{ $SLATypeList };
# ---

        my $ServiceID;
        my @Services;
        for my $Count ( 1 .. 3 ) {
            $ServiceID = $ServiceObject->ServiceAdd(
                Name    => "UT Test Service $Count $RandomID",
# ---
# ITSMIncidentProblemManagement
# ---
                TypeID      => $ServiceTypeName2ID{Training},
                Criticality => '3 normal',
# ---
                ValidID => 1,
                UserID  => 1,
            );
            push @Services, $ServiceID;

            $ServiceObject->CustomerUserServiceMemberAdd(
                CustomerUserLogin => $CustomerUserLogin,
                ServiceID         => $ServiceID,
                Active            => 1,
                UserID            => 1,
            );

            $Self->True(
                $ServiceID,
                "Test service $Count ($ServiceID) created and assigned to customer user",
            );
        }

        # Create several test SLAs.
        my $SLAObject = $Kernel::OM->Get('Kernel::System::SLA');

        my @SLAs;
        for my $Count ( 1 .. 3 ) {
            my $SLAID = $SLAObject->SLAAdd(
                ServiceIDs => \@Services,
                Name       => "UT Test SLA $Count $RandomID",
# ---
# ITSMIncidentProblemManagement
# ---
                TypeID => $SLATypeName2ID{Other},
# ---
                ValidID    => 1,
                UserID     => 1,
            );
            push @SLAs, $SLAID;
        }

        # navigate to AgentTicketZoom screen of created test ticket
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AgentTicketZoom;TicketID=$TicketID");

        # click on 'Note' and switch window
        $Selenium->find_element("//a[contains(\@href, \'Action=AgentTicketNote;TicketID=$TicketID' )]")->click();

        $Selenium->WaitFor( WindowCount => 2 );
        my $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        # wait until page has loaded
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $("#ServiceID").length' );

        # check for entries in the service selection, there should be only one
        $Self->Is(
            $Selenium->execute_script(
                "return \$('#ServiceID option:not([value=\"\"])').length"
            ),
            1,
            "There is only one entry in the service selection",
        );

        # Set test service and trigger AJAX refresh.
        $Selenium->execute_script(
            "\$('#ServiceID option:not([value=\"\"])').attr('selected', true).trigger('redraw.InputField').trigger('change');"
        );
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && !$(".AJAXLoader:visible").length' );

        # Check for restricted entries in the SLA selection, there should be only one.
        $Self->Is(
            $Selenium->execute_script(
                "return \$('#SLAID option:not([value=\"\"])').length"
            ),
            1,
            "There is only one entry in the SLA selection",
        );

        # Verify queue is updated on ACL trigger, see bug#12862 ( https://bugs.otrs.org/show_bug.cgi?id=12862 ).
        my %JunkQueue = $Kernel::OM->Get('Kernel::System::Queue')->QueueGet(
            Name => 'Junk',
        );
        $Self->True(
            $Selenium->execute_script("return \$('#NewQueueID option[value=\"$JunkQueue{QueueID}\"]').length > 0"),
            "Junk queue is available in selection before ACL trigger"
        );

        # Trigger ACL on priority change.
        $Selenium->execute_script("\$('#NewPriorityID').val('2').trigger('redraw.InputField').trigger('change');");
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && !$(".AJAXLoader:visible").length' );

        $Self->False(
            $Selenium->execute_script("return \$('#NewQueueID option[value=\"$JunkQueue{QueueID}\"]').length > 0"),
            "Junk queue is not available in selection after ACL trigger"
        );

        # Close the new note popup.
        $Selenium->find_element( '.CancelClosePopup', 'css' )->click();

        $Selenium->WaitFor( WindowCount => 1 );
        $Selenium->switch_to_window( $Handles->[0] );

        # Please see bug#12871 for more information.
        $Success = $DynamicFieldValueObject->ValueSet(
            FieldID  => $DynamicFieldID2,
            ObjectID => $TicketID,
            Value    => [
                {
                    ValueText => 'a',
                },
            ],
            UserID => 1,
        );

        # click on 'Note' and switch window
        $Selenium->find_element("//a[contains(\@href, \'Action=AgentTicketNote;TicketID=$TicketID' )]")
            ->VerifiedClick();

        $Selenium->WaitFor( WindowCount => 2 );
        $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        # Wait until page has loaded.
        $Selenium->WaitFor(
            JavaScript => 'return typeof(Core) == "object" && typeof(Core.App) == "object" && Core.App.PageLoadComplete'
        );

        $Self->Is(
            $Selenium->execute_script(
                "return \$('#DynamicField_Field2$RandomID option:not([value=\"\"])').length"
            ),
            2,
            "There are only two entries in the dynamic field 2 selection",
        );

        # De-select the dynamic field value for the first field.
        $Selenium->execute_script(
            "return \$('#DynamicField_Field$RandomID').val('').trigger('redraw.InputField').trigger('change');"
        );
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && !$(".AJAXLoader:visible").length' );

        $Self->Is(
            $Selenium->execute_script(
                "return \$('#DynamicField_Field2$RandomID option:not([value=\"\"])').length"
            ),
            4,
            "There are all four entries in the dynamic field 2 selection",
        );

        # Close the new note popup.
        $Selenium->find_element( '.CancelClosePopup', 'css' )->click();

        $Selenium->WaitFor( WindowCount => 1 );
        $Selenium->switch_to_window( $Handles->[0] );

        # Cleanup

        # Restore SysConfig defaults.
        $SysConfigObject->ConfigItemReset(
            Name => 'Ticket::Service',
        );
        $SysConfigObject->ConfigItemReset(
            Name => 'Ticket::Frontend::AgentTicketNote###Service',
        );
        $SysConfigObject->ConfigItemReset(
            Name => 'Ticket::Frontend::AgentTicketNote###DynamicField',
        );

        # Delete test ACLs rules.
        for my $Count ( 1 .. 4 ) {
            my $ACLData = $ACLObject->ACLGet(
                Name   => 'ThisIsAUnitTestACL-' . $Count,
                UserID => 1,
            );

            my $Success = $ACLObject->ACLDelete(
                ID     => $ACLData->{ID},
                UserID => 1,
            );
            $Self->True(
                $Success,
                "ACL with ID $ACLData->{ID} is deleted"
            );
        }

        # deploy again after we deleted the test acl
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AdminACL;Subaction=ACLDeploy");
        $Self->False(
            index(
                $Selenium->get_page_source(),
                'ACL information from database is not in sync with the system configuration, please deploy all ACLs.'
                )
                > -1,
            "ACL deployment successful."
        );

        # delete created test tickets
        $Success = $TicketObject->TicketDelete(
            TicketID => $TicketID,
            UserID   => 1,
        );

        # Ticket deletion could fail if apache still writes to ticket history. Try again in this case.
        if ( !$Success ) {
            sleep 3;
            $Success = $TicketObject->TicketDelete(
                TicketID => $TicketID,
                UserID   => 1,
            );
        }
        $Self->True(
            $Success,
            "Ticket with ticket ID $TicketID is deleted"
        );

        # make sure the cache is correct
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp( Type => 'Ticket' );

        # Delete test SLAs.
        my $DBObject = $Kernel::OM->Get('Kernel::System::DB');
        for my $SLAID (@SLAs) {
            my $Success = $DBObject->Do(
                SQL  => "DELETE FROM service_sla WHERE sla_id = ?",
                Bind => [ \$SLAID ],
            );
            $Self->True(
                $Success,
                "Deleted SLA with ID $SLAID",
            );
        }

        # delete services and relations
        $Success = $DBObject->Do(
            SQL  => "DELETE FROM service_customer_user WHERE customer_user_login = ?",
            Bind => [ \$CustomerUserLogin ],
        );
        $Self->True(
            $Success,
            "Deleted service relations for $CustomerUserLogin",
        );
        for my $ServiceID (@Services) {
# ---
# ITSMIncidentProblemManagement
# ---
            # clean up servica data
            $Success = $DBObject->Do(
                SQL  => "DELETE FROM service_preferences WHERE service_id = ?",
                Bind => [ \$ServiceID ],
            );
            $Self->True(
                $Success,
                "ServicePreferences is deleted - ID $ServiceID",
            );
# ---
            $Success = $DBObject->Do(
                SQL  => "DELETE FROM service WHERE ID = ?",
                Bind => [ \$ServiceID ],
            );
            $Self->True(
                $Success,
                "Deleted service with ID $ServiceID",
            );
        }

        $Success = $DBObject->Do(
            SQL  => "DELETE FROM customer_user WHERE login = ?",
            Bind => [ \$CustomerUserLogin ],
        );
        $Self->True(
            $Success,
            "Deleted Customer $CustomerUserLogin",
        );

        # Delete test dynamic field.
        $Success = $DynamicFieldObject->DynamicFieldDelete(
            ID     => $DynamicFieldID,
            UserID => 1,
        );
        $Self->True(
            $Success,
            "DynamicFieldDelete - Deleted test dynamic field $DynamicFieldID",
        );

        $Success = $DynamicFieldObject->DynamicFieldDelete(
            ID     => $DynamicFieldID2,
            UserID => 1,
        );
        $Self->True(
            $Success,
            "DynamicFieldDelete - Deleted test dynamic field $DynamicFieldID2",
        );

        # make sure the cache is correct
        for my $Cache (qw( Service SLA CustomerUser DynamicField )) {
            $Kernel::OM->Get('Kernel::System::Cache')->CleanUp( Type => $Cache );
        }
    },
);

1;
