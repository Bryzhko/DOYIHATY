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

                field(LocationIDFilter; LocationIDFilter)
                {
                    ApplicationArea = All;
                    Caption = 'Location';
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        ResetView();
                        UpdateActionVisible();
                        Clear(ParkingCenterFilter);
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        DHTLocations: Page "DHT Locations";
                    begin
                        DHTLocations.LookupMode(true);
                        if DHTLocations.RunModal() = Action::LookupOK then begin
                            Text := DHTLocations.GetSelectionFilter();
                            exit(true);
                        end;
                    end;
                }

                field(ParkingCenterIDFilter; ParkingCenterFilter)
                {
                    ApplicationArea = All;
                    Caption = 'Parking Center';

                    trigger OnValidate()
                    begin
                        ResetView();
                        UpdateActionVisible();
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        DHTParkingCenter: Record "DHT Parking Center";
                        DHTParkingCenters: Page "DHT Parking Centers";
                    begin
                        DHTParkingCenter.SetFilter("Location ID", LocationIDFilter);
                        DHTParkingCenters.SetTableView(DHTParkingCenter);
                        DHTParkingCenters.SetRecord(DHTParkingCenter);
                        DHTParkingCenters.LookupMode(true);
                        if DHTParkingCenters.RunModal() = Action::LookupOK then begin
                            Text := DHTParkingCenters.GetSelectionFilter();
                            exit(true);
                        end;
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
        LocationIDFilter, ParkingCenterFilter : Text;
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
        DHTVechicle.SetFilter(Location, LocationIDFilter);
        DHTVechicle.SetFilter("Parking Center ID", ParkingCenterFilter);
        DHTVechicle.SetRange(Type, VechicleType);
        DHTVechicle.SetAutoCalcFields("Parking Center Name");
        if DHTVechicle.FindSet() then
            repeat
                Rec.Init();
                Rec.ID += 1;
                Rec."Parking Center ID" := DHTVechicle."Parking Center ID";
                Rec."Parking Center Name" := DHTVechicle."Parking Center Name";
                Rec."Vechicle Series Number" := DHTVechicle."Series Number";
                Rec."Vechicle Name" := DHTVechicle.Name;
                Rec."Vechicle Type" := DHTVechicle.Type;
                Rec.Insert(true);
            until DHTVechicle.Next() = 0;
    end;

    local procedure UpdateActionVisible()
    begin
        ShowResultVisible := (LocationIDFilter <> '') and (Rec.IsEmpty());
    end;
}