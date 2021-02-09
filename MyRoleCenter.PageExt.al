
pageextension 50115 "My Role Center" extends "Business Manager Role Center"
{
    Caption = 'Role Center';

    actions
    {
        addlast(sections)
        {
            group("DOYIHATY")
            {
                action("Locations")
                {
                    RunObject = page "My Location List";
                    ApplicationArea = All;
                }
                action("Parking Centers")
                {
                    RunObject = page "My Parking Center List";
                    ApplicationArea = All;
                }
                action("Vechicles")
                {
                    RunObject = page "My Vechicle List";
                    ApplicationArea = All;
                }
                action("Orders")
                {
                    RunObject = page "My Order List";
                    ApplicationArea = All;
                }
            }
        }
    }
}
