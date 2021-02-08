page 50121 "My Order List Part"
{
    PageType = ListPart;
    //ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = "My Order Line";
    //CardPageId = "My Vechicle Card";
    Caption = 'Order List Part';

    layout
    {
        area(Content)
        {
            repeater(control)
            {
                field(ID; Rec.ID)
                {
                    Caption = 'ID';
                    ApplicationArea = All;
                }
                field("Order Header ID"; Rec."Order Header ID")
                {
                    ApplicationArea = All;
                }
                field("Vechicle ID"; Rec."Vechicle ID")
                {
                    ApplicationArea = All;
                }
                field("Vechicle Name"; Rec."Vechicle Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}