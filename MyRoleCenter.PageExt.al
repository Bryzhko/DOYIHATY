
pageextension 50115 "My Role Center" extends "Business Manager Role Center"
{
    Caption = 'Role Center';

    actions
    {
        addlast(sections)
        {
            group("My Extension")
            {

                group("Lists")
                {
                    action("Location List")
                    {
                        RunObject = page "My Location List";
                        ApplicationArea = All;
                    }
                    action("Parking Center List")
                    {
                        RunObject = page "My Parking Center List";
                        ApplicationArea = All;
                    }
                    action("Vechicle List")
                    {
                        RunObject = page "My Vechicle List";
                        ApplicationArea = All;
                    }
                    action("List of orders")
                    {
                        RunObject = page "My Order List";
                        ApplicationArea = All;
                    }

                }
                group("Cards")
                {
                    action("Location")
                    {
                        RunObject = page "My Location Card";
                        ApplicationArea = All;
                    }
                    action("Parking Center")
                    {
                        RunObject = page "My Parking Center Card";
                        ApplicationArea = All;
                    }
                    action("Vechicle")
                    {
                        RunObject = page "My vechicle Card";
                        ApplicationArea = All;
                    }
                }
                action("Order")
                {
                    RunObject = page "My Order Document";
                    ApplicationArea = All;
                }
            }
        }
    }
}
