page 59805 "DHT Vechicle"
{
    ApplicationArea = All;
    PageType = Card;
    Caption = 'Vechicle';
    SourceTable = "DHT Vechicle";
    UsageCategory = Administration;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Series Number"; Rec."Series Number")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(ParkingCenter; Rec."Parking Center ID")
                {
                    ApplicationArea = All;
                }
                field(ParkingCenterName; Rec."Parking Center Name")
                {
                    ApplicationArea = All;
                }
                field(LocationName; Rec."Location Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}