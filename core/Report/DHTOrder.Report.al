report 59800 "DHT Order"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Order';
    DataAccessIntent = ReadOnly;
    RDLCLayout = 'Layouts/Order.rdlc';


    dataset
    {
        dataitem(Order; "DHT Order")
        {
            DataItemTableView = sorting(ID);

            column(Order_ID; Format(Order.ID))
            {
            }
            column(Order_CustomerNo; Order."Customer No.")
            {
            }
            column(Order_CustomerName; Order."Customer Name")
            {
            }
            column(Order_LocationName; Order."Location Name")
            {
            }
            column(Order_ParkingCenterName; Order."Parking Center Name")
            {
            }
            column(Order_StartingDate; Format(Order."Starting Date", 0, 4))
            {
            }
            column(Order_EndingDate; Format(Order."Ending Date", 0, 4))
            {
            }
            column(Order_VechicleSeriesNumber; Order."Vechicle Series Number")
            {
            }
            column(Order_VechicleType; Order."Vechicle Type")
            {
            }
            column(Order_VechicleName; Order."Vechicle Name")
            {
            }
            column(Order_AmountTxt; Format(Order.Amount))
            {
            }
            column(Order_Amount; Order.Amount)
            {
            }

            trigger OnPreDataItem()
            var
                NoOrderErr: Label 'The closed order with such ID does not exist, please check ID number or enter another one.';
            begin
                if (StartingDate <> 0D) and (EndingDate <> 0D) then begin
                    Order.SetFilter("Starting Date", '>%1', StartingDate);
                    Order.SetFilter("Ending Date", '<%1', EndingDate);
                end else
                    If EndingDate <> 0D then
                        Order.SetFilter("Ending Date", '<%1', EndingDate);
                Order.SetFilter(ID, OrderID);
                Order.SetFilter("Customer No.", CustomerNo);
                Order.SetRange(Closed, true);
                if Order.IsEmpty() then
                    Error(NoOrderErr);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(StartingDate; StartingDate)
                    {
                        ApplicationArea = All;
                        Caption = 'Starting Date';
                    }
                    field(EndingDate; EndingDate)
                    {
                        ApplicationArea = All;
                        Caption = 'Ending Date';
                    }
                    field(OrderID; OrderID)
                    {
                        ApplicationArea = All;
                        Caption = 'Order ID';

                        trigger OnLookup(var Text: Text): Boolean
                        var
                            DHTClosedOrders: Page "DHT Closed Orders";
                        begin
                            DHTClosedOrders.LookupMode(true);
                            if DHTClosedOrders.RunModal() = Action::LookupOK then begin
                                Text := DHTClosedOrders.GetSelectionFilter();
                                exit(true);
                            end;
                        end;
                    }
                    field(CustomerNo; CustomerNo)
                    {
                        ApplicationArea = All;
                        Caption = 'Customer No.';

                        trigger OnLookup(var Text: Text): Boolean
                        var
                            CustomerList: Page "Customer List";
                        begin
                            CustomerList.LookupMode(true);
                            if CustomerList.RunModal() = Action::LookupOK then begin
                                Text := CustomerList.GetSelectionFilter();
                                exit(true);
                            end;
                        end;
                    }
                }
            }
        }
    }

    var
        OrderID, CustomerNo : Text;
        StartingDate, EndingDate : Date;
}