// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

page 50101 "My Hello World"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = all;
    AccessByPermission = page "My Hello World" = X;
    AdditionalSearchTerms = 'Greeting,HelloWorld';

    actions
    {

        area(Processing)
        {
            action("Greeting")
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('Hello World!!!');
                end;
            }
        }
    }
}
