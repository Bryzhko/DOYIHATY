table 50120 "My Order Line"
{
    Caption = 'Order Line';

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
        }
        field(2; "Order Header ID"; Integer)
        {
            Caption = 'Order Header ID';
        }
        field(3; "Vechicle ID"; Integer)
        {
            TableRelation = "My Vechicle";
            Caption = 'Vechicle';

            trigger OnValidate()
            begin
                CalcFields("Vechicle Name");
            end;
        }
        field(4; "Vechicle Name"; Enum "My Vechicle Type")
        {
            Caption = 'VechicleName';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("My Vechicle"."Vechicle Type" where(ID = field("Vechicle ID")));
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