page 59814 "DHT Vechicles In Use"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "DHT Vechicle";
    SourceTableTemporary = true;

    layout
    {
        area(Content)
        {
            group(Filter)
            {
                Caption = 'Filters';

                field(StartingDateFilter; StartingDate)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    Caption = 'Starting Date';

                    trigger OnValidate()
                    begin
                        ResetView();
                        UpdateActionVisible();
                    end;
                }
                field(EndingDateFilter; EndingDate)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    Caption = 'Ending Date';

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

                field("Series Number"; Rec."Series Number")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                }
                field("Parking Center Name"; Rec."Parking Center Name")
                {
                    ApplicationArea = All;
                }
                field("Location Name"; Rec."Location Name")
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
        StartingDate, EndingDate : Date;
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
        DHTOrder: Record "DHT Order";
    begin
        DHTVechicle.SetAutoCalcFields("Parking Center Name", "Location");
        if DHTVechicle.FindSet() then
            repeat
                DHTOrder.SetRange("Vechicle Series Number", DHTVechicle."Series Number");
                DHTOrder.SetRange(Closed, false);
                DHTOrder.SetFilter("Starting Date", '<=%1', EndingDate);
                DHTOrder.SetFilter("Ending Date", '>=%1' , StartingDate);
                if not DHTOrder.IsEmpty() then begin
                    Rec := DHTVechicle;
                    Rec.Insert();
                end;
            until DHTVechicle.Next() = 0;
    end;

    local procedure UpdateActionVisible()
    begin
        ShowResultVisible := (StartingDate <> 0D) and (EndingDate <> 0D) and (Rec.IsEmpty());
    end;
}