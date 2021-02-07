table 50104 "My Parking Center"
{
    DataClassification = ToBeClassified;
    Caption = 'Parking Center';

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
            MinValue = 0;
            Caption = 'ID';
        }
        field(2; Name; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name';
            trigger OnValidate()
            var
            begin
                MyIdentifierProcedure;
            end;
        }
        field(3; Relation; Integer)
        {
            TableRelation = "My Location";
            Caption = 'Relation';
        }
        field(4; FreePlace; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Free Place';
        }
        field(5; Identifier; Text[20])
        {
            trigger OnValidate()
            begin
                MyIdentifierProcedure();
            end;

        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
        key(FK; Relation)
        {

        }
    }

    local procedure MyIdentifierProcedure()
    begin
        Identifier := UpperCase(Name);
        while StrPos(Identifier, ' ') > 0 do
            Identifier := (DelStr(Identifier, StrPos(Identifier, ' ')) + '-' + CopyStr(Identifier, StrPos(Identifier, ' ') + StrLen(' ')));
    end;

}