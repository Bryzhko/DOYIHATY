table 50104 "My Parking Center"
{
    DataClassification = ToBeClassified;
    Caption = 'Parking Center';

    fields
    {
        field(1; ID; Integer)
        {
            AutoIncrement = true;
            Editable = false;
            MinValue = 0;
            Caption = 'ID';
        }
        field(2; Name; Text[20])
        {
            Caption = 'Name';
            trigger OnValidate()
            var
            begin
                UpdateCustomerName();
            end;
        }
        field(3; "Location ID"; Integer)
        {
            TableRelation = "My Location";
            Caption = 'Relation';
        }
        field(4; FreePlace; Integer)
        {
            Caption = 'Free Place';
        }
        field(5; Identifier; Text[20])
        {
            trigger OnValidate()
            begin
                UpdateCustomerName();
            end;
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
        key(FK; "Location ID")
        {

        }
    }

    local procedure UpdateCustomerName()
    begin
        Identifier := UpperCase(Name);
        while StrPos(Identifier, ' ') > 0 do
            Identifier := (DelStr(Identifier, StrPos(Identifier, ' ')) + '-' + CopyStr(Identifier, StrPos(Identifier, ' ') + StrLen(' ')));
    end;

}