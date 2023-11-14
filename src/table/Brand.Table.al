table 50100 Brand
{
    Caption = 'Brand';
    DataClassification = CustomerContent;
    LookupPageId = Brands;
    DrillDownPageId = Brands;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(3; "Name 2"; Text[100])
        {
            Caption = 'Name 2';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
