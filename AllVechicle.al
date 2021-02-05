query 50118 AllVechicle
{
    QueryType = Normal;

    elements
    {
        dataitem(DLocation; DLocation)
        {
            column(Name; Name)
            {

            }
            dataitem(ParCenter; ParCenter)
            {
                DataItemLink = Relation = DLocation.Name;
                SqlJoinType = RightOuterJoin;
                column(FreePlace; FreePlace)
                {
                    Method = Sum;
                }

            }
        }
    }
}