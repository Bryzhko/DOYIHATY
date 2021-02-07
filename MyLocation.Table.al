table 50100 "My Location"
{
    Caption = 'Location';

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
        field(2; Name; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name';
        }
        field(3; "Slot For Truck"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Slot for truck';
        }


    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }


}