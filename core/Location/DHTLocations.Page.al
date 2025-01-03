page 59801 "DHT Locations"
{
    ApplicationArea = All;
    Caption = 'Locations';
    CardPageId = "DHT Location";
    PageType = List;
    Editable = false;
    SourceTable = "DHT Location";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(control)
            {
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

    procedure GetSelectionFilter() Result: Text
    var
        DHTLocation: Record "DHT Location";
        SelectionFilterManagement: Codeunit SelectionFilterManagement;
        RecordRef: RecordRef;
    begin
        CurrPage.SetSelectionFilter(DHTLocation);
        RecordRef.GetTable(DHTLocation);
        Result := SelectionFilterManagement.GetSelectionFilter(RecordRef, DHTLocation.FieldNo("ID"));
    end;
}