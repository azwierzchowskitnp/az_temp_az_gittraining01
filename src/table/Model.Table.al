table 50101 Model
{
    Caption = 'Model';
    DataClassification = CustomerContent;
    LookupPageId = Models;
    DrillDownPageId = Models;

    fields
    {
        field(1; "Brand Code"; Code[20])
        {
            Caption = 'Brand Code';
            TableRelation = Brand;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(3; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(4; "Total Value"; Decimal)
        {
            Caption = 'Total Value';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = sum(Car.Value where(
                "Brand Code" = field("Brand Code"),
                "Model Code" = field(Code),
                Year = field("Year Filter")));
        }
        field(5; "Year Filter"; Integer)
        {
            Caption = 'Year Filter';
            FieldClass = FlowFilter;
        }
    }
    keys
    {
        key(PK; "Brand Code", Code)
        {
            Clustered = true;
        }
    }
}
