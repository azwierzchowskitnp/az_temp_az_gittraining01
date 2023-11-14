page 50101 Models
{
    ApplicationArea = All;
    Caption = 'Models';
    PageType = List;
    SourceTable = Model;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Brand Code"; Rec."Brand Code")
                {
                    ToolTip = 'Specifies the value of the Brand Code field.';
                }
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Total Value"; Rec."Total Value")
                {
                    ToolTip = 'Specifies the value of the Total Value field.';
                }
            }
        }
    }
}
