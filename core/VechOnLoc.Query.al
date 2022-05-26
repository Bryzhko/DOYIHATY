query 59800 VechicleOnLocation
{
    QueryType = Normal;

    elements
    {
        dataitem(DLocation; "DHT Location")
        {
            column(ID; ID)
            {
                //ColumnFilter = ID = const(1);
            }
            column(Name; Name)
            {
                //ColumnFilter = Name = const('SUMY');
            }
            //DataItemTableFilter = Name = const('SUMY');
            //DataItemTableFilter = ID = const(1);
            dataitem(ParCenter; "DHT Parking Center")
            {
                DataItemLink = "Location ID" = DLocation.Name;
                // SqlJoinType = RightOuterJoin;
                dataitem(Vechicle; "DHT Vechicle")
                {
                    DataItemLink = "Parking Center" = ParCenter.Name;
                    SqlJoinType = RightOuterJoin;
                    column(Type; Type)
                    {
                    }
                }
                /*filter(FilterName; Name)
                {
                    // STRPOS(UPPERCASE(Name), UPPERCASE('Sumy')) = 0;
                }*/
            }
        }
    }
}