page 50106 "My Parking Center Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Parking Center";
    AccessByPermission = page "My Parking Center Card" = X;
    AdditionalSearchTerms = 'My Parking Center Card';
    Caption = 'Parking Center Card';
    layout
    {
        area(Content)
        {
            group(GroupName)
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
                field(Relation; Rec.Relation)
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