table 50115 OrderTable
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
        field(2; CustName; Text[10])
        {
            TableRelation = Customer;
        }
        field(6; Vech; Integer)
        {
            TableRelation = Vechicle;
            trigger OnValidate()
            //var
            //Vechicle: Record Vechicle;
            begin
                // if Vechicle.Get(Vech) then begin
                //   Validate(Id,Vechicle.Type);
                // end;
                CalcFields(VechName);
            end;
        }
        field(3; VechName; Enum VechType)
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Vechicle.Type where(ID = field(Vech)));
        }
        field(4; StartDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; EndDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Close; Boolean)
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
    }
}