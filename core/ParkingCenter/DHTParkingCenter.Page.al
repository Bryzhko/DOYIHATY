page 59803 "DHT Parking Center"
{
    ApplicationArea = All;
    Caption = 'Parking Center';
    PageType = Card;
    SourceTable = "DHT Parking Center";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Location ID"; Rec."Location ID")
                {
                    ApplicationArea = All;
                }
                field("Location Name"; Rec."Location Name")
                {
                    ApplicationArea = All;
                }
                field(Identifier; Rec.Identifier)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}