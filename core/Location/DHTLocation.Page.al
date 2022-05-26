page 59800 "DHT Location"
{
    ApplicationArea = All;
    PageType = Card;
    SourceTable = "DHT Location";
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
                field(SFT; Rec.SlotForTruck)
                {
                    ApplicationArea = All;

                }

            }
        }
    }
}