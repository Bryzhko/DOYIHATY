page 50102 "My Location List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Location";
    CardPageId = "My Location Card";
    Caption = 'Location List';

    layout
    {
        area(Content)
        {
            repeater(control)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(SlotForTruck; Rec."Slot For Truck")
                {
                    ApplicationArea = All;
                    Caption = 'Slot for truck';
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