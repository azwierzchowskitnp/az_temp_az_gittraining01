codeunit 50101 ShortCarMessageMgt implements "Car Message Mgt."
{

    procedure ShowCarDescription(var Car: Record Car);
    var
#pragma warning disable AA0470
        MessageLbl: Label 'Short message %1';
#pragma warning restore AA0470
    begin
        Message(StrSubstNo(MessageLbl, Car."No."));
    end;
}