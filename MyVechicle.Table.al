table 50109 "My Vechicle"
{
    DataClassification = ToBeClassified;
    Caption = 'Vechicle';

    fields
    {
        field(1; ID; Integer)
        {
            AutoIncrement = true;
            Editable = false;
            MinValue = 0;
            Caption = 'ID';
        }
        field(2; "Vechicle Type"; Enum "My Vechicle Type")
        {
            Caption = 'Type';
        }
        field(3; "Parking Center ID"; Integer)
        {
            TableRelation = "My Parking Center";
            Caption = 'Relation';
            trigger OnValidate()
            var
                ParkingCenter: Record "My Parking Center";
            begin
                CalcFields("Parking Center Name");
                if ParkingCenter.Get("Parking Center ID") then begin
                    Validate("Location ID", ParkingCenter."Location ID");
                end;
            end;
        }
        field(6; "Parking Center Name"; Text[20])
        {
            FieldClass = FlowField;
            Caption = 'Parking Center Name';
            CalcFormula = lookup("My Parking Center".Name where(ID = field("Parking Center ID")));
            Editable = false;
        }
        field(4; "Location ID"; Integer)
        {
            Caption = 'Location';
            TableRelation = "My Location";
            trigger OnValidate()
            begin
                CalcFields("Location Name");
            end;
        }
        field(5; "Location Name"; Text[20])
        {
            Caption = 'Location Name';
            FieldClass = FlowField;
            CalcFormula = lookup("My Location".Name where(ID = field("Location ID")));
            Editable = false;
        }
        field(7; "In Use"; Boolean)
        {
            Caption = 'In use';
            // Editable = false;
            DataClassification = ToBeClassified;
            /* trigger OnValidate()
             begin
                 MyInUseProcedure();
             end;*/
        }

    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
        key(FK; "Parking Center ID")
        {

        }
    }

    /*procedure MyInUseProcedure()
    var
        Order: Record "My Order";
    begin
        if Order.Get(Id)
        then begin
            if (Order.Close = true) and (Order.Vechicle = ID) then begin
                InUse := true;
            end;
        end;
    end;*/
}

