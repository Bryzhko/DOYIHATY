page 50119 "My Order Document"
{
    PageType = Document;
    SourceTable = "My Order Header";
    Caption = 'Order Document';

    layout
    {
        area(Content)
        {
            group(GeneraL)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    Caption = 'ID';
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
            group(Lines)
            {
                part("Vechicle List part"; "My Order List Part")
                {
                    ApplicationArea = All;
                    SubPageLink = "Order Header ID" = field(ID);
                    SubPageView = sorting(ID, "Order Header ID");
                }
            }
        }
    }
}