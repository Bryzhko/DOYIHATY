query 50112 VechicleOnLocation
{
    QueryType = Normal;

    elements
    {
        dataitem(DLocation; DLocation)
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
            dataitem(ParCenter; ParCenter)
            {
                DataItemLink = Relation = DLocation.Name;
                // SqlJoinType = RightOuterJoin;
                dataitem(Vechicle; Vechicle)
                {
                    DataItemLink = Relation = ParCenter.Name;
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