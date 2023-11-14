codeunit 50102 LongCarMessageMgt implements "Car Message Mgt."
{
    procedure ShowCarDescription(var Car: Record Car);
    var
        MessageLbl: Label 'Long message %1, %2, %3, %4', Comment = '%1 - car no., %2 - reg no., %3 - engine type, %4 - engine size';
    begin
        Message(StrSubstNo(MessageLbl, Car."No.", Car."Registration No.", Car."Engine Type", Car."Engine Size"));
    end;
}