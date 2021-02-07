table 50104 ParCenter
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
            MinValue = 0;
        }
        field(2; Name; Text[20])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
            begin
                IdentProcedure;
            end;
        }
        field(3; Relation; Integer)
        {
            TableRelation = DLocation;
        }
        field(4; FreePlace; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Identifier; Text[20])
        {
            trigger OnValidate()
            begin
                IdentProcedure();
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

    local procedure IdentProcedure()
    begin
        Identifier := UpperCase(Name);
        while StrPos(Identifier, ' ') > 0 do
            Identifier := (DelStr(Identifier, StrPos(Identifier, ' ')) + '-' + CopyStr(Identifier, StrPos(Identifier, ' ') + StrLen(' ')));
    end;

}