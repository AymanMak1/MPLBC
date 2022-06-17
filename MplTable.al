table 50149 Mpl
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }

        field(2; "Sale Order No"; Code[20])
        {
            Caption = 'Sale Order No';
            DataClassification = ToBeClassified;
        }
        field(3; "Package ID"; Code[20])
        {
            Caption = 'Package ID';
            DataClassification = ToBeClassified;
        }
        field(4; Weight; Integer)
        {
            Caption = 'Weight';
            DataClassification = ToBeClassified;
        }
        field(5; Height; Integer)
        {
            Caption = 'Height';
            DataClassification = ToBeClassified;
        }

        field(6; Length; Integer)
        {
            Caption = 'Length';
            DataClassification = ToBeClassified;
        }

        field(7; COD; Code[20])
        {
            Caption = 'Value-COD';
            DataClassification = ToBeClassified;
        }

        field(8; "Tracking Number"; Code[20])
        {
            Caption = 'Tracking Number';
            DataClassification = ToBeClassified;
        }

        field(9; "Fee"; Code[20])
        {
            Caption = 'Fee';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}