page 59811 "DHT Closed Orders"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    InsertAllowed = false;
    Editable = false;
    DeleteAllowed = false;
    SourceTable = "DHT Order";
    CardPageId = "DHT Order";
    SourceTableView = where(Closed = const(true));

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Location Name"; Rec."Location Name")
                {
                    ApplicationArea = All;
                }
                field("Parking Center Name"; Rec."Parking Center Name")
                {
                    ApplicationArea = All;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}