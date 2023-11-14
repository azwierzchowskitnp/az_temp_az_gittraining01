page 50102 "Car List"
{
    ApplicationArea = All;
    Caption = 'Car List';
    PageType = List;
    SourceTable = Car;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Car Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Brand Code"; Rec."Brand Code")
                {
                    ToolTip = 'Specifies the value of the Brand Code field.';
                }
                field("Model Code"; Rec."Model Code")
                {
                    ToolTip = 'Specifies the value of the Model Code field.';
                }
                field("Message Type"; Rec."Message Type")
                {
                    ToolTip = 'Specifies the value of the Message Type field.';
                }
                field("Value"; Rec."Value")
                {
                    ToolTip = 'Specifies the value of the Value field.';
                }
                field("Registration No."; Rec."Registration No.")
                {
                    ToolTip = 'Specifies the value of the Registration No. field.';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.';
                }
                field("Engine Type"; Rec."Engine Type")
                {
                    ToolTip = 'Specifies the value of the Engine Type field.';
                }
                field("Engine Size"; Rec."Engine Size")
                {
                    ToolTip = 'Specifies the value of the Engine Size field.';
                }
                field("Description 3"; Rec."Description 3")
                {
                    ToolTip = 'Specifies the value of the Description 3 field.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(InterfaceDemo)
            {
                Caption = 'Interface demo';
                Image = AbsenceCalendar;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Executes the Interface demo action.';
                trigger OnAction()
                var
                    MsgInterface: Interface "Car Message Mgt.";
                begin
                    MsgInterface := Rec."Message Type";
                    MsgInterface.ShowCarDescription(Rec);
                end;
            }
            action(CancelledEntriesAction)
            {
                Caption = 'Export';
                ApplicationArea = All;
                Image = CancelledEntries;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Executes the Export action.';
                trigger OnAction()
                var
                    JsonMgt: Codeunit "Car Json Mgt.";
                begin
                    JsonMgt.DownloadCars();
                end;
            }

            action(ImportData)
            {
                Caption = 'Import';
                ApplicationArea = All;
                Image = Import;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Executes the Import action.';
                trigger OnAction()
                var
                    JsonMgt: Codeunit "Car Json Mgt.";
                begin
                    JsonMgt.ImportJson();
                end;
            }

            action(HttpCall)
            {
                Caption = 'Http Call';
                ApplicationArea = All;
                Image = Web;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Executes the Http Call action.';
                trigger OnAction()
                var
                    JsonMgt: Codeunit "Car Json Mgt.";
                begin
                    JsonMgt.TestHttpCall();
                end;
            }


        }
    }
}
