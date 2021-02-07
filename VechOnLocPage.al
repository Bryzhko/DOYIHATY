page 50113 VechOnLocPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = DLocation;
    AccessByPermission = page VechOnLocPage = X;
    AdditionalSearchTerms = 'Vechicle on location';
    layout
    {
        area(Content)
        {

            field(Sumy; SumyLabel)
            {
                ApplicationArea = All;
                Editable = false;
                ShowCaption = false;
                trigger OnDrillDown()
                begin
                    MyQuery.SetRange(Name, 'Sumy');
                    //MyQuery.SetRange(ID, 0, 1);
                    MyQuery.OPEN;
                    while MyQuery.READ do begin
                        MESSAGE(Text001, MyQuery.Type);
                    end;
                    MyQuery.CLOSE;
                end;

            }


        }
    }



    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
            }
        }
    }
    /* trigger OnAfterGetCurrRecord()
     begin
         MyQuery.OPEN;
         while MyQuery.READ do begin
             MESSAGE(Text001, MyQuery.Type);
         end;
         MyQuery.CLOSE;
     end;*/

    var
        //Index : Integer ;
        Sumy: Text;
        MyQuery: Query VechicleOnLocation;
        ArrayOfText: array[10] of Text[10];
        Text001: Label ' Type : %1';
        SumyLabel: Label 'Label for Sumy';
        VType: enum VechType;


    /* procedure SumyVechicle(): Text
     begin
         MyQuery.OPEN;
         while MyQuery.READ do begin
             if MyQuery.Name = 'Sumy'
            then
                 MESSAGE(Text001, MyQuery.Type);
             // exit();
         end;
         MyQuery.CLOSE;
     end;*/






}