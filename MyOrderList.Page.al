page 50120 "My Order List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Order";
    CardPageId = "My Order Document";
    Caption = 'Order List';

    layout
    {
        area(Content)
        {

            group(GroupName)
            {
                repeater(rep)
                {
                    field(ID; Rec.ID)
                    {
                        ApplicationArea = All;
                        Caption = 'ID';
                    }
                    field("Vechicle Name"; Rec."Vechicle Name")
                    {
                        ApplicationArea = All;
                        Caption = 'Vechicle Name';
                    }
                    field("CustomerName"; Rec."Customer Name")
                    {
                        ApplicationArea = All;
                        Caption = 'Customer Name';
                    }
                    field("Start Date"; Rec."Start Date")
                    {
                        ApplicationArea = All;
                        Caption = 'Start Date';
                    }
                    field("Vechicle ID"; Rec."Vechicle ID")
                    {
                        ApplicationArea = All;
                        Caption = 'Vechicle';
                    }
                    field("End Date"; Rec."End Date")
                    {
                        ApplicationArea = All;
                        Caption = 'End Date';
                    }
                    field(Close; Rec.Close)
                    {
                        ApplicationArea = All;
                        Caption = 'Close';
                    }

                }
            }
        }
    }
}