table 50109 Vechicle
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
            MinValue = 0;
        }
        field(2; Type; Enum VechType)
        {
            DataClassification = ToBeClassified;

        }
        field(3; Relation; Integer)
        {
            TableRelation = ParCenter;
            trigger OnValidate()
            var
                ParCenter: Record ParCenter;
            begin
                CalcFields(ParkingCenterName);
                if ParCenter.Get(Relation) then begin
                    Validate(Location, ParCenter.Relation);
                end;
            end;
        }
        field(6; ParkingCenterName; Text[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(ParCenter.Name where(ID = field(Relation)));
            Editable = false;
        }
        field(4; Location; Integer)
        {
            TableRelation = DLocation;
            trigger OnValidate()
            begin
                CalcFields(LocationName);
            end;
        }
        field(5; LocationName; Text[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(DLocation.Name where(ID = field(Location)));
            Editable = false;
        }
        field(7; InUse; Boolean)
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