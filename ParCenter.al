table 50104 ParCenter
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Relation; Code[20])
        {
            TableRelation = DLocation;
        }
        field(4; FreePlace; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Identifier; Text[10])
        {
            DataClassification = ToBeClassified;
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