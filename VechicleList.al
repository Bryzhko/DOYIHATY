page 50111 VechicleLIst
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vechicle;
    AccessByPermission = page VechicleList = X;
    AdditionalSearchTerms = 'Vechicles,cars,trucks,microbuses';
    CardPageId = VechCard;

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
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;

                }
                field(ParkingCenter; Rec.Relation)
                {
                    ApplicationArea = All;

                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = All;
                }
                field(LocationName; Rec.LocationName)
                {
                    ApplicationArea = All;
                }
                field(ParkingCenterName; Rec.ParkingCenterName)
                {
                    ApplicationArea = All;
                }
                field(InUse; Rec.InUse)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
            }
        }
    }


}