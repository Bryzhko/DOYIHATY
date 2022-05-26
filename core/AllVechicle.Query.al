// query 59801 AllVechicle
// {
//     QueryType = Normal;

//     elements
//     {
//         dataitem(DLocation; "DHT Location")
//         {
//             column(Name; Name)
//             {

//             }
//             dataitem(ParCenter; "DHT Parking Center")
//             {
//                 DataItemLink = "Location ID" = DLocation.Name;
//                 SqlJoinType = RightOuterJoin;
//                 column(FreePlace; Place)
//                 {
//                     Method = Sum;
//                 }

//             }
//         }
//     }
// }