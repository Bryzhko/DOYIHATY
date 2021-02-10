page 50111 "My Vechicle List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Vechicle";
    CardPageId = "My Vechicle Card";
    Caption = 'Vechicle List';

    layout
    {
        area(Content)
        {
            repeater(control)
            {
                field(Type; Rec."Vechicle Type")
                {
                    Caption = 'Type';
                    ApplicationArea = All;
                }
                field("Parking Center ID"; Rec."Parking Center ID")
                {
                    Caption = 'Parking Center';
                    ApplicationArea = All;
                }
                field(Location; Rec."Location ID")
                {
                    Caption = 'Location';
                    ApplicationArea = All;
                }
                field(LocationName; Rec."Location Name")
                {
                    Caption = 'Location Name';
                    ApplicationArea = All;
                }
                field(ParkingCenterName; Rec."Parking Center Name")
                {
                    Caption = 'Parking Center Name';
                    ApplicationArea = All;
                }
                /*field(InUse; Rec."In Use")
                {
                    Caption = 'In Use';
                    ApplicationArea = All;
                }*/
            }
        }
    }
}