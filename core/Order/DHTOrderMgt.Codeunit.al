codeunit 59800 "DHT Order Mgt"
{
    procedure ValidateDate(DHTOrder: Record "DHT Order")
    var
        IncorrectDateErr: Label 'Starting Date is bigger then Ending Date. Please, define date in correct format to proceed.';
        WrongDateErr: Label 'Sorry it is impossible to rent or return a car on the last day of month due to internal policy. Please, choose another day.';
    begin
        if (DHTOrder."Starting Date" > DHTOrder."Ending Date") and (DHTOrder."Starting Date" = 0D) then
            Error(IncorrectDateErr);

        if DHTOrder."Starting Date" <> 0D then
            if CalcDate('<CM>', DHTOrder."Starting Date") = DHTOrder."Starting Date" then
                Error(WrongDateErr);
                
        if DHTOrder."Ending Date" <> 0D then
            if CalcDate('<CM>', DHTOrder."Ending Date") = DHTOrder."Ending Date" then
                Error(WrongDateErr);
    end;

    procedure GetAmount(DHTOrder: Record "DHT Order") Result: Decimal
    var
        DHTPrice: Record "DHT Price";
        UndefinedTypePriceErr: Label 'Please, define renting price for selected type on PriceList page.';
    begin
        if (DHTOrder."Starting Date" = 0D) or (DHTOrder."Ending Date" = 0D) then
            exit;

        DHTOrder.CalcFields("Vechicle Type");
        if not DHTPrice.Get(DHTOrder."Vechicle Type") then
            Error(UndefinedTypePriceErr);

        if DHTOrder."Starting Date" = DHTOrder."Ending Date" then
            Result := DHTPrice.Price
        else
            Result := (DHTOrder."Ending Date" - DHTOrder."Starting Date") * DHTPrice.Price;
    end;

    procedure CloseOrder(DHTOrder: Record "DHT Order")
    begin
        DHTOrder.Validate(Closed, true);
        DHTOrder.Modify(true);
    end;
}