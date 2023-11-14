pageextension 50100 "Purch. Order Subf. Ext." extends "Purchase Order Subform"
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
