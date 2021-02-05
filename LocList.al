page 50102 LocList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = DLocation;
    AccessByPermission = page LocList = X;
    AdditionalSearchTerms = 'LocList';

    layout
    {
        area(Content)
        {
            repeater(control)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(SlotForTruck; Rec.SlotForTruck)
                {
                    ApplicationArea = All;

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
                ApplicationArea = All;
            }
        }
    }
}