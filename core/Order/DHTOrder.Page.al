page 59809 "DHT Order"
{
    Caption = 'Order';
    PageType = Card;
    SourceTable = "DHT Order";

    layout
    {
        area(Content)
        {
            group(Customer)
            {
                Caption = 'Customer';

                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        UpdateVisibility();
                    end;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
            }
            group(Location)
            {
                Caption = 'Location';

                field("Location ID"; Rec."Location ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        UpdateVisibility();
                    end;
                }
                field("Location Name"; Rec."Location Name")
                {
                    ApplicationArea = All;
                }
            }
            group(ParkingCenter)
            {
                Caption = 'Parking Center';
                field("Parking Center ID"; Rec."Parking Center ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        UpdateVisibility();
                    end;
                }
                field("Parking Center Name"; Rec."Parking Center Name")
                {
                    ApplicationArea = All;
                }
            }
            group(Vechicle)
            {
                Caption = 'Vechicle';

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
            group(Dates)
            {
                Caption = 'Dates';

                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        ValidateDate();
                        Rec.Validate(Amount, GetAmount());
                        UpdateVisibility();
                    end;
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        ValidateDate();
                        Rec.Validate(Amount, GetAmount());
                        UpdateVisibility();
                    end;
                }
            }
            group(AmountToPay)
            {
                Caption = 'Amount To Pay';

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
            action(Close)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                Caption = 'Close Order';
                Visible = MandatoryFieldsPopulated;

                trigger OnAction()
                begin
                    CloseOrder();
                end;
            }
        }
    }

    var
        MandatoryFieldsPopulated: Boolean;


    trigger OnOpenPage()
    begin
        UpdateVisibility();
        CurrPage.Editable(not Rec.Closed);
    end;

    trigger OnAfterGetRecord()
    begin
        UpdateVisibility();
    end;

    local procedure UpdateVisibility()
    begin
        MandatoryFieldsPopulated := (Rec."Customer No." <> '') and (Rec."Location ID" <> 0) and (Rec."Vechicle Series Number" <> '') and (Rec."Parking Center ID" <> 0) and (Rec."Starting Date" <> 0D) and (Rec."Ending Date" <> 0D) and (not Rec.Closed);
    end;

    local procedure ValidateDate()
    var
        DHTOrderMgt: Codeunit "DHT Order Mgt";
    begin
        DHTOrderMgt.ValidateDate(Rec);
    end;

    local procedure GetAmount() Result: Decimal
    var
        DHTOrderMgt: Codeunit "DHT Order Mgt";
    begin
        Result := DHTOrderMgt.GetAmount(Rec);
    end;

    local procedure CloseOrder()
    var
        DHTOrderMgt: Codeunit "DHT Order Mgt";
    begin
        DHTOrderMgt.CloseOrder(Rec);
        CurrPage.Close();
    end;
}