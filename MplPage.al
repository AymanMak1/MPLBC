page 50147 MplPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Mpl;

    layout
    {
        area(Content)
        {
            group(IDs)
            {
                Caption = 'IDs';
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
                field("Sale Order No"; "Sale Order No")
                {
                    ApplicationArea = All;

                }

            }
            group(ManualEntry)
            {
                Caption = 'Manual Entry';
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

            }
            group(APIResponse)
            {
                Caption = 'API Response';
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