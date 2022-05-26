table 59803 "DHT Vechicle"
{
    Caption = 'Vechicle';
    DrillDownPageId = "DHT Vechicle";

    fields
    {
        field(10; "Series Number"; Code[20])
        {
            Caption = 'Series Number';
        }
        field(20; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(30; Type; Enum "DHT Vechicle Type")
        {
            Caption = 'Vechicle Type';
        }
        field(40; "Parking Center"; Integer)
        {
            Caption = 'Parking Center ID';
            TableRelation = "DHT Parking Center".ID;

            trigger OnValidate()
            var
                ParCenter: Record "DHT Parking Center";
            begin
                CalcFields("Parking Center Name", Location);
                DefineLocationName();
            end;
        }
        field(50; "Parking Center Name"; Text[100])
        {
            Caption = 'Parking Center';
            FieldClass = FlowField;
            CalcFormula = lookup("DHT Parking Center".Name where(ID = field("Parking Center")));
            Editable = false;
        }
        field(60; Location; Integer)
        {
            Caption = 'Location';
            FieldClass = FlowField;
            CalcFormula = lookup("DHT Parking Center"."Location ID" where(ID = field("Parking Center")));
            Editable = false;
        }
        field(70; "Location Name"; Text[100])
        {
            Caption = 'Location Name';
            TableRelation = "DHT Parking Center"."Location Name" where(ID = field("Parking Center"));
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Series Number")
        {
            Clustered = true;
        }
    }

    local procedure DefineLocationName()
    var
        DHTLocation: Record "DHT Location";
    begin
        Rec.CalcFields(Location);
        if DHTLocation.Get(Location) then
            Validate("Location Name", DHTLocation.Name);
    end;
}