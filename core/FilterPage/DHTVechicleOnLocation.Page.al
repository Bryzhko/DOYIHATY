page 59813 "DHT Vechicle On Location"
{
    PageType = Worksheet;
    ApplicationArea = All;
    DeleteAllowed = false;
    InsertAllowed = false;
    UsageCategory = Administration;
    SourceTable = "DHT Vechicle On Location Temp";
    SourceTableTemporary = true;

    layout
    {
        area(Content)
        {

            group(Filter)
            {
                Caption = 'Filters';

                field(LocationFilter; LocationID)
                {
                    ApplicationArea = All;
                    Caption = 'Location';

                    trigger OnValidate()
                    begin
                        ResetView();
                        UpdateActionVisible();
                    end;
                }

                field(VechicleTypFilter; VechicleType)
                {
                    ApplicationArea = All;
                    Caption = 'Vechicle Type';

                    trigger OnValidate()
                    begin
                        ResetView();
                        UpdateActionVisible();
                    end;
                }
            }
            repeater(GroupName)
            {
                Visible = MatrixVisible;

                field("Parking Center Name"; Rec."Parking Center Name")
                {
                    ApplicationArea = All;
                }
                field("Vechicle Series Number"; Rec."Vechicle Series Number")
                {
                    ApplicationArea = All;
                }
                field("Vechicle Name"; Rec."Vechicle Name")
                {
                    ApplicationArea = All;
                }
                field("Vechicle Type"; Rec."Vechicle Type")
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
            action(ShowResult)
            {
                ApplicationArea = All;
                Caption = 'Show Result';
                PromotedCategory = Process;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
                Visible = ShowResultVisible;

                trigger OnAction()
                begin
                    InitView();
                end;
            }
        }
    }

    var
        LocationID: Integer;
        VechicleType: Enum "DHT Vechicle Type";
        ShowResultVisible, MatrixVisible : Boolean;

    trigger OnOpenPage()
    begin
        UpdateActionVisible();
    end;

    trigger OnAfterGetRecord()
    begin
        UpdateActionVisible();
    end;

    local procedure InitView()
    begin
        ClearMatrix();
        BuildMartix();
        MatrixVisible := true;
    end;

    local procedure ResetView()
    begin
        ClearMatrix();
        MatrixVisible := false;
    end;

    local procedure ClearMatrix()
    begin
        Rec.Reset();
        Rec.DeleteAll(true);
    end;

    local procedure BuildMartix()
    var
        DHTVechicle: Record "DHT Vechicle";
    begin
        DHTVechicle.SetRange(Location, LocationID);
        DHTVechicle.SetRange(Type, VechicleType);
        DHTVechicle.SetAutoCalcFields("Parking Center Name");
        if DHTVechicle.FindSet() then
            repeat
                Rec.Init();
                Rec.ID += 1;
                Rec."Parking Center ID" := DHTVechicle."Parking Center";
                Rec."Parking Center Name" := DHTVechicle."Parking Center Name";
                Rec."Vechicle Series Number" := DHTVechicle."Series Number";
                Rec."Vechicle Name" := DHTVechicle.Name;
                Rec."Vechicle Type" := DHTVechicle.Type;
                Rec.Insert(true);
            until DHTVechicle.Next() = 0;
    end;

    local procedure UpdateActionVisible()
    begin
        ShowResultVisible := (LocationID <> 0) and (Rec.IsEmpty());
    end;
}