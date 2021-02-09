page 50121 "My Order List Part"
{
    PageType = ListPart;
    SourceTable = "My Order Line";
    AutoSplitKey = true;
    DelayedInsert = true;
    Caption = 'Order List Part';

    layout
    {
        area(Content)
        {
            repeater(control)
            {
                field(ID; Rec.ID)
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