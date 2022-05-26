table 59801 "DHT Order"
{
    Caption = 'Order';
    DrillDownPageId = "DHT Order";

    fields
    {
        field(10; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
            MinValue = 0;
        }
        field(20; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer."No.";

            trigger OnValidate()
            begin
                CalcFields("Customer Name");
            end;
        }
        field(30; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Name where("No." = field("Customer No.")));
            Editable = false;
        }
        field(40; "Vechicle Series Number"; Code[20])
        {
            Caption = 'Vechicle Series Number';
            TableRelation = "DHT Vechicle"."Series Number" where("Parking Center" = field("Parking Center ID"));

            trigger OnValidate()
            begin
                CalcFields("Vechicle Name", "Vechicle Type");
            end;
        }
        field(50; "Vechicle Name"; Text[100])
        {
            Caption = 'Vechicle Name';
            FieldClass = FlowField;
            CalcFormula = lookup("DHT Vechicle".Name where("Series Number" = field("Vechicle Series Number")));
            Editable = false;
        }
        field(60; "Vechicle Type"; Enum "DHT Vechicle Type")
        {
            Caption = 'Vechicle Type';
            FieldClass = FlowField;
            CalcFormula = lookup("DHT Vechicle".Type where("Series Number" = field("Vechicle Series Number")));
            Editable = false;
        }
        field(70; "Parking Center ID"; Integer)
        {
            Caption = 'Parking Center ID';
            TableRelation = "DHT Parking Center".ID where("Location ID" = field("Location ID"));

            trigger OnValidate()
            begin
                CalcFields("Parking Center Name");
            end;
        }
        field(80; "Parking Center Name"; Text[100])
        {
            Caption = 'Parking Center Name';
            FieldClass = FlowField;
            CalcFormula = lookup("DHT Parking Center".Name where(ID = field("Parking Center ID")));
            Editable = false;
        }
        field(90; "Location ID"; Integer)
        {
            Caption = 'Location ID';
            TableRelation = "DHT Location".ID;

            trigger OnValidate()
            begin
                CalcFields("Location Name");
            end;
        }
        field(100; "Location Name"; Text[100])
        {
            Caption = 'Location Name';
            FieldClass = FlowField;
            CalcFormula = lookup("DHT Location".Name where(ID = field("Location ID")));
            Editable = false;
        }
        field(110; "Starting Date"; Date)
        {
            Caption = 'Starting Date';

            trigger OnValidate()
            begin

            end;
        }
        field(120; "Ending Date"; Date)
        {
            Caption = 'Ending Date';

            trigger OnValidate()
            begin

            end;
        }
        field(130; Amount; Decimal)
        {
            Caption = 'Amount';
            Editable = false;
        }
        field(140; Closed; Boolean)
        {
            Caption = 'Closed';
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