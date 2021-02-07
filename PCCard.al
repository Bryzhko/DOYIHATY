page 50106 PCCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ParCenter;
    AccessByPermission = page PCCard = X;
    AdditionalSearchTerms = 'PCCard';
    layout
    {
        area(Content)
        {
            group(GroupName)
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
}