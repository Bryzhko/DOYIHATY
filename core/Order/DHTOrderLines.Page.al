page 59810 "DHT Order Lines"
{
    Caption = 'Order Lines';
    PageType = ListPart;
    SourceTable = "DHT Order Line";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
             
                field("Vechicle Series Number"; Rec."Vechicle Series Number")
                {
                    ApplicationArea = All;
                }
                field("Vechicle Name"; Rec."Vechicle Name")
                {
                    ApplicationArea = All;
                }
                field("Vechicle Type"; Rec."Vechicle Type")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}