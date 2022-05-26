table 59804 "DHT Order Line"
{
    Caption = 'Order Line';


    fields
    {
        field(10; "Order ID"; Integer)
        {
            Caption = 'Order ID';
            TableRelation = "DHT Order".ID;
        }
        field(20; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(30; "Location ID"; Integer)
        {
            Caption = 'Location ID';
            TableRelation = "DHT Location".ID;
        }
        field(40; "Parking Center ID"; Integer)
        {
            Caption = 'Parking Center ID';
            TableRelation = "DHT Parking Center".ID where("Location ID" = field("Location ID"));
        }
        field(50; "Vechicle Series Number"; Code[20])
        {
            Caption = 'Vechicle Series Number';
            TableRelation = "DHT Vechicle"."Series Number";

            trigger OnValidate()
            begin
                CalcFields("Vechicle Name", "Vechicle Type");
            end;
        }
        field(60; "Vechicle Name"; Text[100])
        {
            Caption = 'Vechicle Name';
            FieldClass = FlowField;
            CalcFormula = lookup("DHT Vechicle".Name where("Series Number" = field("Vechicle Series Number")));
            Editable = false;
        }
        field(70; "Vechicle Type"; Enum "DHT Vechicle Type")
        {
            Caption = 'Vechicle Type';
            FieldClass = FlowField;
            CalcFormula = lookup("DHT Vechicle".Type where("Series Number" = field("Vechicle Series Number")));
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Order ID", "Line No.")
        {
            Clustered = true;
        }
    }

    local procedure GetParkingCenterID() Result: Integer
    var
        DHTOrder: Record "DHT Order";
    begin
        if DHTOrder.Get("Order ID") then
            Result := DHTOrder."Parking Center ID";
    end;
}