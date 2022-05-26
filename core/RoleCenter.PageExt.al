pageextension 59800 RoleCenterPageExt extends "Business Manager Role Center"
{
    actions
    {
        modify("Financial Statements")
        {
            Visible = false;
        }
        modify("Cash Management")
        {
            Visible = false;
        }
        modify(Action39)
        {
            Visible = false;
        }
        modify(Action40)
        {
            Visible = false;
        }
        modify(Action41)
        {
            Visible = false;
        }
        modify(Reports)
        {
            Visible = false;
        }
        modify("Excel Reports")
        {
            Visible = false;
        }
        modify("<Page Posted Purchase Credit Memos>")
        {
            Visible = false;
        }
        modify("<Page Posted Purchase Invoices>")
        {
            Visible = false;
        }
        modify("<Page Posted Purchase Receipts>")
        {
            Visible = false;
        }
        modify("<Page Purchase Credit Memos>")
        {
            Visible = false;
        }
        modify("<Page Purchase Invoices>")
        {
            Visible = false;
        }
        modify("<Page Purchase Order>")
        {
            Visible = false;
        }
        modify("<Page Purchase Orders>")
        {
            Visible = false;
        }
        modify("Account Schedules")
        {
            Visible = false;
        }
        modify(Action129)
        {
            Visible = false;
        }
        modify(Action131)
        {
            Visible = false;
        }
        modify(Action23)
        {
            Visible = false;
        }
        modify(Action3)
        {
            Visible = false;
        }
        modify(Action62)
        {
            Visible = false;
        }
        modify("Balance Sheet")
        {
            Visible = false;
        }
        modify("Bank Acc. Statements")
        {
            Visible = false;
        }
        modify("Bank Accounts")
        {
            Visible = false;
        }
        modify(BankAccountReconciliations)
        {
            Visible = false;
        }
        modify("Blanket Purchase Orders")
        {
            Visible = false;
        }
        modify("Blanket Sales Orders")
        {
            Visible = false;
        }
        modify("Cash Flow Forecasts")
        {
            Visible = false;
        }
        modify("Cash Flow Manual Expenses")
        {
            Visible = false;
        }
        modify("Cash Flow Manual Revenues")
        {
            Visible = false;
        }
        modify(CashReceiptJournals)
        {
            Visible = false;
        }
        modify("Chart of Accounts")
        {
            Visible = false;
        }
        modify("Chart of Cash Flow Accounts")
        {
            Visible = false;
        }
        modify("Create Vendor Payments")
        {
            Visible = false;
        }
        modify(Currencies)
        {
            Visible = false;
        }
        modify(Customer)
        {
            Visible = false;
        }

        addlast(sections)
        {
            group("Lists")
            {
                action("Locations")
                {
                    ApplicationArea = All;
                    Caption = 'Locations';
                    RunObject = page "DHT Location List";
                }
                action("Parking Centers")
                {
                    ApplicationArea = All;
                    Caption = 'Parking Centers';
                    RunObject = page "DHT Parking Centers";
                }
                action("Vechicles")
                {
                    ApplicationArea = All;
                    Caption = 'Vehicles';
                    RunObject = page "DHT Vechicles";
                }
                action("Orders")
                {
                    ApplicationArea = All;
                    Caption = 'Orders';
                    RunObject = page "DHT Orders";
                }
                action(ClosedOrders)
                {
                    ApplicationArea = All;
                    Caption = 'Closed Orders';
                    RunObject = page "DHT Closed Orders";
                }
                action(PriceList)
                {
                    ApplicationArea = All;
                    Caption = 'Price List';
                    RunObject = page "DHT Price List";
                }
            }
            group(Reporting)
            {

                action(CustomerOrders)
                {
                    ApplicationArea = All;
                    Caption = 'Customer Orders';
                    RunObject = page "DHT Customer Orders";
                }
                action(VechicleOnLocation)
                {
                    ApplicationArea = All;
                    Caption = 'Vechicle On Location';
                    RunObject = page "DHT Vechicle On Location";
                }
                action(VechiclesInUse)
                {
                    ApplicationArea = All;
                    Caption = 'Vechicles In Use';
                    RunObject = page "DHT Vechicles In Use";
                }
                // action("Vechicle on Location")
                // {
                //     RunObject = page "VechOnLocPage";
                //     ApplicationArea = All;
                // }
                // action("Free vechicle on all location")
                // {
                //     RunObject = page "AllVech";
                //     ApplicationArea = All;
                // }
                // action("Order")
                // {
                //     //RunObject = page "OrderPage";
                //     ApplicationArea = All;
                // }
            }
        }
    }
}