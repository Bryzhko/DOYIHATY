page 50110 "My Vechicle Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Vechicle";
    Caption = 'Vechicle Card';

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
                field(InUse; Rec."In Use")
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
            action(Sumy)
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                    Vehicle: Record "My Vechicle";
                Begin
                    Vehicle.SetRange("Location Name", 'Sumy');
                    Page.Run(Page::"My Vechicle LIst", Vehicle);
                End;
            }
        }
    }
}