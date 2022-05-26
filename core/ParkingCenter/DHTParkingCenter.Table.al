table 59802 "DHT Parking Center"
{
    Caption = 'Parking Center';
    DrillDownPageId = "DHT Parking Center";

    fields
    {
        field(10; ID; Integer)
        {
            AutoIncrement = true;
            Caption = 'ID';
            Editable = false;
            MinValue = 0;
        }
        field(20; Name; Text[100])
        {
            Caption = 'Name';

            trigger OnValidate()
            var
            begin
                DefineIdentifier;
            end;
        }
        field(30; "Location ID"; Integer)
        {
            Caption = 'Location ID';
            TableRelation = "DHT Location".ID;

            trigger OnValidate()
            begin
                CalcFields("Location Name");
            end;
        }
        field(40; "Location Name"; Text[100])
        {
            CalcFormula = lookup("DHT Location".Name where(ID = field("Location ID")));
            Caption = 'Location';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60; Identifier; Code[100])
        {
            Editable = false;
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }

    local procedure DefineIdentifier()
    begin
        Identifier := UpperCase(Name);
        while StrPos(Identifier, ' ') > 0 do
            Identifier := (DelStr(Identifier, StrPos(Identifier, ' ')) + '-' + CopyStr(Identifier, StrPos(Identifier, ' ') + StrLen(' ')));
    end;
}