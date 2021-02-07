page 50120 OrderList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = OrderTable;
    CardPageId = OrderPage;

    layout
    {
        area(Content)
        {

            group(GroupName)
            {
                repeater(rep)
                {
                    field(ID; Rec.ID)
                    {
                        ApplicationArea = All;
                    }
                    field(CustName; Rec.CustName)
                    {
                        ApplicationArea = All;
                    }
                    field(VechName; Rec.VechName)
                    {
                        ApplicationArea = All;
                    }
                    field(StartDate; Rec.StartDate)
                    {
                        ApplicationArea = All;
                    }
                    field(EndDate; Rec.EndDate)
                    {
                        ApplicationArea = All;
                    }
                    field(Vech; Rec.Vech)
                    {
                        ApplicationArea = All;
                    }
                    field(Close; Rec.Close)
                    {
                        ApplicationArea = All;
                    }

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                /*  ApplicationArea = All;

                  trigger OnAction()
                  var
                      Vechicle: Record Vechicle;
                  begin
                      Vechicle.SetRange(Type,VechType);
                      Page.Run(Page::OrderList, Vechicle);
                  end;*/
            }
        }
    }

    var
        myInt: Integer;
}