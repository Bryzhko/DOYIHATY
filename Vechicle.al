table 50109 Vechicle
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Text[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Type; Enum VechType)
        {
            DataClassification = ToBeClassified;

        }
        field(3; Relation; Code[20])
        {
            TableRelation = ParCenter;
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
}