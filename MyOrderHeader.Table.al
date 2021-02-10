table 50115 "My Order Header"
{
    Caption = 'Order Header';

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
            Caption = 'Customer Name';
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
        CheckDate := CalcDate('<+CM>', Today());
        if ((("Start Date" = CheckDate) or ("End Date" = CheckDate)) or ("Start Date" > "End Date")) then begin
            Error('On the last day of each month, we have maintenance where it is impossible to rent or return the vehicle');
        end;
    end;
}