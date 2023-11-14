tableextension 50100 "Purchase Line Extension" extends "Purchase Line"
{
    fields
    {
        field(50100; "Car No."; Code[20])
        {
            Caption = 'Car No.';
            TableRelation = Car;
            DataClassification = CustomerContent;
        }
        field(50101; "Car History Entry Type"; Enum "Car History Entry Type")
        {
            Caption = 'Car History Entry Type';
            DataClassification = CustomerContent;
        }
    }
}
