page 50146 MplList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Mpl;
    CardPageId = MplPage;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
                field("Sale Order No"; "Sale Order No")
                {
                    ApplicationArea = All;
                }
                field("Package ID"; "Package ID")
                {
                    ApplicationArea = All;
                }
                field(Weight; Weight)
                {
                    ApplicationArea = All;
                }
                field(Height; Height)
                {
                    ApplicationArea = All;
                }
                field(Length; Length)
                {
                    ApplicationArea = All;
                }
                field(COD; COD)
                {
                    ApplicationArea = All;
                }

                field("Tracking Number"; "Tracking Number")
                {
                    ApplicationArea = All;
                }
                field("Fee"; "Fee")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}