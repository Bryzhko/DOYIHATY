table 59800 "DHT Location"
{
    Caption = 'Location';
    DrillDownPageId = "DHT Location";

    fields
    {
        field(10; ID; Integer)
        {
            AutoIncrement = true;
            Caption = 'ID';
            Editable = false;
            MinValue = 0;
        }
        field(20; Name; Text[10])
        {
            Caption = 'Name';
        }
        field(30; SlotForTruck; Boolean)
        {
            Caption = 'Slot For Truck';
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Name, SlotForTruck)
        {
        }
    }
}