page 50110 VechCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vechicle;
    AccessByPermission = page VechCard = X;
    AdditionalSearchTerms = 'Vechicle,car,truck,microbus';


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(InUse; Rec.InUse)
                {
                    ApplicationArea = All;
                }
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
                trigger OnAction()
                var
                    Vehicle: Record Vechicle;
                Begin
                    Vehicle.SetRange(LocationName, 'Sumy');
                    Page.Run(Page::VechicleLIst, Vehicle);
                End;
            }
        }
    }


}