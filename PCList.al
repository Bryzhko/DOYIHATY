page 50107 PCList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParCenter;
    AccessByPermission = page PCList = X;
    AdditionalSearchTerms = 'PCList';
    CardPageId = PCCard;
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
                field(Relation; Rec.Relation)
                {
                    ApplicationArea = All;

                }
                field(FreePlace; Rec.FreePlace)
                {
                    ApplicationArea = All;

                }
                field(Identifier; Rec.Identifier)
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