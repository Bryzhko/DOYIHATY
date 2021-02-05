
pageextension 50115 RoleCenterPageExt extends "Business Manager Role Center"
{

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
                        RunObject = page "LocList";
                        ApplicationArea = All;
                    }
                    action("Parking Center List")
                    {
                        RunObject = page "PCList";
                        ApplicationArea = All;
                    }
                    action("Vechicle List")
                    {
                        RunObject = page "VechicleList";
                        ApplicationArea = All;
                    }
                }
                group("Cards")
                {
                    action("Location")
                    {
                        RunObject = page "Location";
                        ApplicationArea = All;
                    }
                    action("Parking Center")
                    {
                        RunObject = page "PCCard";
                        ApplicationArea = All;
                    }
                    action("Vechicle")
                    {
                        RunObject = page "VechCard";
                        ApplicationArea = All;
                    }
                }
                action("Vechicle on Location")
                {
                    RunObject = page "VechOnLocPage";
                    ApplicationArea = All;
                }
                action("Free vechicle on all location")
                {
                    RunObject = page "AllVech";
                    ApplicationArea = All;
                }
            }
        }
    }
}
