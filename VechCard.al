page 50110 VechCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vechicle;
    AccessByPermission = page VechCard = X;
    AdditionalSearchTerms = 'Vechicle,car,truck,microbus';

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
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;

                }
                field(ParkingCenter; Rec.Relation)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    /* actions
     {
         area(Processing)
         {
             action(ActionName)
             {
                 ApplicationArea = All;


             }
         }
     }*/


}