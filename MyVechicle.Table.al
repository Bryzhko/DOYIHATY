table 50109 "My Vechicle"
{
    DataClassification = ToBeClassified;
    Caption = 'Vechicle';

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
        field(2; Type; Enum "My Vechicle Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'Type';
        }
        field(3; Relation; Integer)
        {
            TableRelation = "My Parking Center";
            Caption = 'Relation';
            trigger OnValidate()
            var
                ParkingCenter: Record "My Parking Center";
            begin
                CalcFields(ParkingCenterName);
                if ParkingCenter.Get(Relation) then begin
                    Validate(Location, ParkingCenter.Relation);
                end;
            end;
        }
        field(6; ParkingCenterName; Text[10])
        {
            FieldClass = FlowField;
            Caption = 'Parking Center Name';
            CalcFormula = lookup("My Parking Center".Name where(ID = field(Relation)));
            Editable = false;
        }
        field(4; Location; Integer)
        {
            Caption = 'Location';
            TableRelation = "My Location";
            trigger OnValidate()
            begin
                CalcFields(LocationName);
            end;
        }
        field(5; LocationName; Text[10])
        {
            Caption = 'Location Name';
            FieldClass = FlowField;
            CalcFormula = lookup("My Location".Name where(ID = field(Location)));
            Editable = false;
        }
        field(7; InUse; Boolean)
        {
            Caption = 'In use';
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