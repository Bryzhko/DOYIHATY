pageextension 59800 RoleCenterPageExt extends "Business Manager Role Center"
{
    actions
    {
        addlast(sections)
        {
            group("Lists")
            {
                action("Locations")
                {
                    ApplicationArea = All;
                    Caption = 'Locations';
                    RunObject = page "DHT Locations";
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
                action(PrintOrder)
                {
                    ApplicationArea = All;
                    Caption = 'Print Order';
                    RunObject = report "DHT Order";
                }
            }
        }
    }
}