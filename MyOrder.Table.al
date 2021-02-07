table 50115 "My Order"
{
    Caption = 'Order';

    fields
    {
        field(1; ID; Integer)
        {
            AutoIncrement = true;
            Editable = false;
            MinValue = 0;
            Caption = 'ID';
        }
        field(2; "Customer Name"; Text[10])
        {
            TableRelation = Customer."No.";
            Caption = 'ID';
        }
        field(6; "Vechicle ID"; Integer)
        {
            TableRelation = "My Vechicle";
            Caption = 'Vechicle';
            trigger OnValidate()
            begin
                CalcFields("Vechicle Name");
            end;
        }
        field(3; "Vechicle Name"; Enum "My Vechicle Type")
        {
            Caption = 'VechicleName';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("My Vechicle"."Vechicle Type" where(ID = field("Vechicle ID")));
        }
        field(4; "Start Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'StartDate';

            trigger OnValidate()
            begin
                MyCheckDateProcedure();
            end;
        }
        field(5; "End Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'EndDate';

            trigger OnValidate()
            begin
                MyCheckDateProcedure();
            end;
        }
        field(7; Close; Boolean)
        {
            Caption = 'Close';
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }

    local procedure MyCheckDateProcedure()
    var
        CheckDate: Date;
    begin
        CheckDate := CalcDate('<-1M+CM>', Today());
        if ((("Start Date" = CheckDate) or ("End Date" = CheckDate)) or ("Start Date" > "End Date")) then begin
            Error('On the last day of each month, we have maintenance where it is impossible to rent or return the vehicle');
        end;
    end;
}