// page 59814 "DHT Customer LookUp"
// {
//     PageType = List;
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     SourceTable = Customer;
//     SourceTableTemporary = true;
    
//     layout
//     {
//         area(Content)
//         {
//             group(GroupName)
//             {
//                 field(Name; NameSource)
//                 {
//                     ApplicationArea = All;
                    
//                 }
//             }
//         }
//     }
    
//     actions
//     {
//         area(Processing)
//         {
//             action(ActionName)
//             {
//                 ApplicationArea = All;
                
//                 trigger OnAction()
//                 begin
                    
//                 end;
//             }
//         }
//     }
    
//     var
//         myInt: Integer;
// }