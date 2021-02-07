page 50120 "My Order List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Order";
    CardPageId = "My Order Document";
    Caption = 'Order List';

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
                        Caption = 'ID';
                    }
                    field(VechicleName; Rec.VechicleName)
                    {
                        ApplicationArea = All;
                        Caption = 'Vechicle Name';
                    }
                    field(CustomerName; Rec.CustomerName)
                    {
                        ApplicationArea = All;
                        Caption = 'Customer Name';
                    }
                    field(StartDate; Rec.StartDate)
                    {
                        ApplicationArea = All;
                        Caption = 'Start Date';
                    }
                    field(Vechicle; Rec.Vechicle)
                    {
                        ApplicationArea = All;
                        Caption = 'Vechicle';
                    }
                    field(EndDate; Rec.EndDate)
                    {
                        ApplicationArea = All;
                        Caption = 'End Date';
                    }
                    field(Close; Rec.Close)
                    {
                        ApplicationArea = All;
                        Caption = 'Close';
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