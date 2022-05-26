table 59807 "DHT Vechicle On Location Temp"
{
    Caption = 'Vechicle On Location';
    TableType = Temporary;

    fields
    {
        field(10; ID; Integer)
        {
            Caption = 'ID';
            AutoIncrement = true;
            Editable = false;
        }
        field(20; "Parking Center ID"; Integer)
        {
            Caption = 'Parking Center ID';
            TableRelation = "DHT Parking Center".ID;
            Editable = false;
        }
        field(30; "Parking Center Name"; Text[100])
        {
            Caption = 'Parking Center Name';
            Editable = false;
        }
        field(40; "Vechicle Series Number"; Code[20])
        {
            Caption = 'Vechicle Series Number';
            Editable = false;
        }
        field(50; "Vechicle Name"; Text[100])
        {
            Caption = 'Vechicle Name';
            Editable = false;
        }
        field(60; "Vechicle Type"; Enum "DHT Vechicle Type")
        {
            Caption = 'Vechicle Series Number';
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
}