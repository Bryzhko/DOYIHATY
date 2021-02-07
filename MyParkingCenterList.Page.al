page 50107 "My Parking Center List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Parking Center";
    AccessByPermission = page "My Parking Center List" = X;
    Caption = 'Parking Center List';

    layout
    {
        area(Content)
        {
            repeater(control)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    Caption = 'Id';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(Relation; Rec."Location ID")
                {
                    ApplicationArea = All;
                    Caption = 'Relation';
                }
                field(FreePlace; Rec.FreePlace)
                {
                    ApplicationArea = All;
                    Caption = 'Free Place';
                }
                field(Identifier; Rec.Identifier)
                {
                    ApplicationArea = All;
                    Caption = 'Identifier';
                }
            }
        }
    }
}