page 50100 MplPage
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

            usercontrol(POSTAAPI; POSTAAPI)
            {

                trigger OnControlReady()
                begin
                    Message('I am ready!')
                end;

                trigger OnInvoke(Context: JsonObject)
                var
                    Response: JsonObject;
                begin
                    if Confirm('Invoking?') then;
                    CurrPage.POSTAAPI.OnInvokeResult(Response)
                end;
            }
        }
    }

    actions
    {
        // Adds the action called "My Actions" to the Action menu 
        area(Processing)
        {
            action("MPL")
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                trigger OnAction()
                var
                    MPLAPI: Codeunit MPLAPI;
                begin
                    MPLAPI.Connect();
                end;
            }
        }
    }

}