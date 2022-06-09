

pageextension 50145 CTA extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast(Creation)
        {
            group(MyNewActionGroup)
            {
                action(MyNewAction)
                {
                    Caption = 'My New Action';

                    trigger OnAction();
                    begin
                        Message('My message');
                    end;
                }
            }
        }
    }

    var
        myInt: Integer;
}