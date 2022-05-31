page 59812 "DHT Customer Orders"
{
    PageType = Worksheet;
    DeleteAllowed = false;
    InsertAllowed = false;
    SourceTable = "DHT Customer Order Temp";
    SourceTableTemporary = true;


    layout
    {
        area(Content)
        {
            group(Filters)
            {
                Caption = 'Filters';

                field("Customer No."; CustomerNoFilter)
                {
                    ApplicationArea = All;
                    Caption = 'Customer No.';

                    trigger OnValidate()
                    begin
                        ResetView();
                        UpdateActionVisible();
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        CustomerList: Page "Customer List";
                    begin
                        CustomerList.LookupMode(true);
                        if CustomerList.RunModal() = Action::LookupOK then begin
                            Text := CustomerList.GetSelectionFilter();
                            exit(true);
                        end;
                    end;
                }
                field(Closed; ClosedFilter)
                {
                    ApplicationArea = All;
                    Caption = 'Closed';

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

                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                }
                field("Location Name"; Rec."Location Name")
                {
                    ApplicationArea = All;
                }
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
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
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
        CustomerNoFilter: Text;
        ClosedFilter: Boolean;
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
        DHTOrder: Record "DHT Order";
    begin
        DHTOrder.SetFilter("Customer No.", CustomerNoFilter);
        DHTOrder.SetRange(Closed, ClosedFilter);
        DHTOrder.SetAutoCalcFields("Vechicle Name", "Vechicle Type", "Parking Center Name", "Location Name");
        if DHTOrder.FindSet() then
            repeat
                Rec.Init();
                Rec.ID := DHTOrder.ID;
                Rec."Vechicle Series Number" := DHTOrder."Vechicle Series Number";
                Rec."Vechicle Name" := DHTOrder."Vechicle Name";
                Rec."Vechicle Type" := DHTOrder."Vechicle Type";
                Rec."Parking Center ID" := DHTOrder."Parking Center ID";
                Rec."Parking Center Name" := DHTOrder."Parking Center Name";
                Rec."Location ID" := DHTOrder."Location ID";
                Rec."Location Name" := DHTOrder."Location Name";
                Rec."Starting Date" := DHTOrder."Starting Date";
                Rec."Ending Date" := DHTOrder."Ending Date";
                Rec.Amount := DHTOrder.Amount;
                Rec.Insert();
            until DHTOrder.Next() = 0;
    end;

    local procedure UpdateActionVisible()
    begin
        ShowResultVisible := (CustomerNoFilter <> '') and (Rec.IsEmpty());
    end;
}