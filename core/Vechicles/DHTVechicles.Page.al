page 59806 "DHT Vechicles"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "DHT Vechicle";
    AccessByPermission = page "DHT Vechicles" = X;
    AdditionalSearchTerms = 'Vechicles,cars,trucks,microbuses';
    CardPageId = "DHT Vechicle";

    layout
    {
        area(Content)
        {
            repeater(control)
            {
                field("Series Number"; Rec."Series Number")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(ParkingCenter; Rec."Parking Center")
                {
                    ApplicationArea = All;
                }
                field(ParkingCenterName; Rec."Parking Center Name")
                {
                    ApplicationArea = All;
                }
                field(LocationName; Rec."Location Name")
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
            action(ShowResult)
            {
                ApplicationArea = All;
                Caption = 'Show Number of Available Vechicles';
                PromotedCategory = Process;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                var
                    DHTVechicle: Record "DHT Vechicle";
                    DHTOrder: Record "DHT Order";
                    Counter: Integer;
                begin
                    If DHTVechicle.FindSet() then
                        repeat
                            DHTOrder.SetRange("Vechicle Series Number", DHTVechicle."Series Number");
                            DHTOrder.SetFilter("Starting Date", '<=%1', WorkDate());
                            DHTOrder.SetFilter("Ending Date", '>=%1', WorkDate());
                            DHTOrder.SetRange(Closed, false);
                            if DHTOrder.IsEmpty() then
                                Counter += 1;
                        until DHTVechicle.Next() = 0;

                    Message('Number of Available Vechicles on Current Date: %1', Counter);
                end;
            }
        }
    }
}