pageextension 50101 "Posted Purch. Inv. Subf. Ext." extends "Posted Purch. Invoice Subform"
{
    layout
    {
        addafter(Quantity)
        {
            field("Car No."; Rec."Car No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Car No. field.';
            }
            field("Car History Entry Type"; Rec."Car History Entry Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Car History Entry Type field.';
            }
        }
    }
}
