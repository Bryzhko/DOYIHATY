page 50103 "My Location Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Location";
    Caption = 'Location Card';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Slot For Truck"; Rec."Slot For Truck")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}