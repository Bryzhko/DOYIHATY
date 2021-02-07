page 50119 "My Order Document"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Order";
    Caption = 'Order Document';

    layout
    {
        area(Content)
        {
            group(GroupName)
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