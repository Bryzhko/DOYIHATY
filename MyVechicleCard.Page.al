page 50110 "My Vechicle Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Vechicle";
    AccessByPermission = page "My Vechicle Card" = X;
    AdditionalSearchTerms = 'Vechicle,car,truck,microbus';


    layout
    {
        area(Content)
        {
            group(GroupName)
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
                trigger OnAction()
                var
                    Vehicle: Record "My Vechicle";
                Begin
                    Vehicle.SetRange(LocationName, 'Sumy');
                    Page.Run(Page::"My Vechicle LIst", Vehicle);
                End;
            }
        }
    }


}