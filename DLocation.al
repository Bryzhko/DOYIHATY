table 50100 DLocation
{


    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
            MinValue = 0;
        }
        field(2; Name; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(3; SlotForTruck; Boolean)
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(PK; ID)
        {
            //Clustered = true;
        }
    }


}