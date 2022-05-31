table 59806 "DHT Customer Order Temp"
{
    Caption = 'Order';
    TableType = Temporary;


    fields
    {
        field(10; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
            MinValue = 0;
        }
        field(20; "Vechicle Series Number"; Code[20])
        {
            Caption = 'Vechicle Series Number';
            TableRelation = "DHT Vechicle"."Series Number" where("Parking Center ID" = field("Parking Center ID"));
            Editable = false;

            trigger OnValidate()
            begin
                CalcFields("Vechicle Name", "Vechicle Type");
            end;
        }
        field(30; "Vechicle Name"; Text[100])
        {
            Caption = 'Vechicle Name';
            Editable = false;
        }
        field(40; "Vechicle Type"; Enum "DHT Vechicle Type")
        {
            Caption = 'Vechicle Type';
            Editable = false;
        }
        field(50; "Parking Center ID"; Integer)
        {
            Caption = 'Parking Center ID';
            TableRelation = "DHT Parking Center".ID where("Location ID" = field("Location ID"));
            Editable = false;
        }
        field(60; "Parking Center Name"; Text[100])
        {
            Caption = 'Parking Center Name';
            Editable = false;
        }
        field(70; "Location ID"; Integer)
        {
            Caption = 'Location ID';
            TableRelation = "DHT Location".ID;
            Editable = false;
        }
        field(80; "Location Name"; Text[100])
        {
            Caption = 'Location Name';
            Editable = false;
        }
        field(90; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            Editable = false;
        }
        field(100; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            Editable = false;
        }
        field(110; Amount; Decimal)
        {
            Caption = 'Amount';
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