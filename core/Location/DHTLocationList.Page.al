page 59801 "DHT Location List"
{
    ApplicationArea = All;
    Caption = 'Locations';
    CardPageId = "DHT Location";
    PageType = List;
    Editable = false;
    SourceTable = "DHT Location";
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
                field(SlotForTruck; Rec.SlotForTruck)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}