table 50115 "My Order"
{
    DataClassification = ToBeClassified;
    Caption = 'Order';
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
        field(2; CustomerName; Text[10])
        {
            TableRelation = Customer;
            Caption = 'ID';
        }
        field(6; Vechicle; Integer)
        {
            TableRelation = "My Vechicle";
            Caption = 'Vechicle';
            trigger OnValidate()
            begin
                CalcFields(VechicleName);
            end;
        }
        field(3; VechicleName; Enum "My Vechicle Type")
        {
            Caption = 'VechicleName';
            FieldClass = FlowField;
            CalcFormula = lookup("My Vechicle".Type where(ID = field(Vechicle)));
        }
        field(4; StartDate; Date)
        {
            Caption = 'StartDate';
            DataClassification = ToBeClassified;
        }
        field(5; EndDate; Date)
        {
            Caption = 'EndDate';
            DataClassification = ToBeClassified;
        }
        field(7; Close; Boolean)
        {
            Caption = 'Close';
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