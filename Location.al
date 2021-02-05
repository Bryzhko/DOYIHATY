page 50103 Location
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = DLocation;
    AccessByPermission = page Location = X;
    AdditionalSearchTerms = 'Location';
    InsertAllowed = true;

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
                field(SFT; Rec.SlotForTruck)
                {
                    ApplicationArea = All;

                }

            }
        }
    }
    /*
       actions
       {
           area(Processing)
           {
               action(ActionName)
               {
                   ApplicationArea = All;
                   trigger OnAction()
                   begin
                       Init();
                       Insert();
                   end;
               }
           }
       }

       var
           myInt: Integer;*/
}