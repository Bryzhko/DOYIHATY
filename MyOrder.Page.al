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
                field(VechicleName; Rec.VechicleName)
                {
                    ApplicationArea = All;
                    Caption = 'Vechicle Name';
                }
                field(CustomerName; Rec.CustomerName)
                {
                    ApplicationArea = All;
                    Caption = 'Customer Name';
                }
                field(StartDate; Rec.StartDate)
                {
                    ApplicationArea = All;
                    Caption = 'Start Date';
                }
                field(Vechicle; Rec.Vechicle)
                {
                    ApplicationArea = All;
                    Caption = 'Vechicle';
                }
                field(EndDate; Rec.EndDate)
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

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}