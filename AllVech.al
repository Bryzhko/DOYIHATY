page 50118 AllVech
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = DLocation;

    layout
    {
        area(Content)
        {

            field(Count; CountLabel)
            {
                ApplicationArea = All;
                Editable = false;
                ShowCaption = false;
                trigger OnDrillDown()
                begin

                    MyQuery.OPEN;
                    while MyQuery.READ do begin
                        MESSAGE(Text001, MyQuery.FreePlace);
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


    var

        MyQuery: Query AllVechicle;

        Text001: Label 'Amount of free vechicle from all locations is  %1 ';
        CountLabel: Label 'Label for All Vechicle';
}