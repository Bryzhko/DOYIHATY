page 59804 "DHT Parking Centers"
{
    ApplicationArea = All;
    CardPageId = "DHT Parking Center";
    Caption = 'Parking Centers';
    PageType = List;
    SourceTable = "DHT Parking Center";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(control)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Relation; Rec."Location ID")
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