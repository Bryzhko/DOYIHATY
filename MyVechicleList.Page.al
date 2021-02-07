page 50111 "My Vechicle List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Vechicle";
    AccessByPermission = page "My Vechicle List" = X;
    AdditionalSearchTerms = 'Vechicles,cars,trucks,microbuses';
    CardPageId = "My Vechicle Card";
    Caption = 'Vechicle List';

    layout
    {
        area(Content)
        {
            repeater(control)
            {
                field(ID; Rec.ID)
                {
                    Caption = 'ID';
                    ApplicationArea = All;

                }
                field(Type; Rec.Type)
                {
                    Caption = 'Type';
                    ApplicationArea = All;

                }
                field(ParkingCenter; Rec.Relation)
                {
                    Caption = 'Parling Center';
                    ApplicationArea = All;

                }
                field(Location; Rec.Location)
                {
                    Caption = 'Location';
                    ApplicationArea = All;
                }
                field(LocationName; Rec.LocationName)
                {
                    Caption = 'Location Name';
                    ApplicationArea = All;
                }
                field(ParkingCenterName; Rec.ParkingCenterName)
                {
                    Caption = 'Parking Center Name';
                    ApplicationArea = All;
                }
                field(InUse; Rec.InUse)
                {
                    Caption = 'In Use';
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