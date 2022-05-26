table 59805 "DHT Price"
{
    Caption = 'Price';

    fields
    {
        field(10; "Type"; Enum "DHT Vechicle Type")
        {
            Caption = 'Type';
        }
        field(20; Price; Decimal)
        {
            Caption = 'Price';
        }
    }

    keys
    {
        key(Pk; Type)
        {
            Clustered = true;
        }
    }
}