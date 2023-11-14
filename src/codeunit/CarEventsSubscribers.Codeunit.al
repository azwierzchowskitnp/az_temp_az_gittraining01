codeunit 50100 "Car Events Subscribers"
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnAfterPostPurchLine', '', false, false)]
    local procedure OnAfterPostPurchLine(var PurchaseHeader: Record "Purchase Header"; var PurchaseLine: Record "Purchase Line"; CommitIsSupressed: Boolean; var PurchInvLine: Record "Purch. Inv. Line"; var PurchCrMemoLine: Record "Purch. Cr. Memo Line"; var PurchInvHeader: Record "Purch. Inv. Header"; var PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr."; var PurchLineACY: Record "Purchase Line"; GenJnlLineDocType: Enum "Gen. Journal Document Type"; GenJnlLineDocNo: Code[20]; GenJnlLineExtDocNo: Code[35]; SrcCode: Code[10]; xPurchaseLine: Record "Purchase Line");
    var
        CarHistoryEntry: Record "Car History Entry";
    begin
        if (PurchaseLine."Car No." <> '') then begin
            CarHistoryEntry.Init();
            CarHistoryEntry.Validate("Car No.", PurchaseLine."Car No.");
            CarHistoryEntry.Validate("Entry Type", PurchaseLine."Car History Entry Type");
            CarHistoryEntry.Validate(Date, PurchaseHeader."Posting Date");
            CarHistoryEntry.Validate(Cost, PurchaseLine.Amount);
            CarHistoryEntry.Validate(Notes, PurchaseLine.Description);
            CarHistoryEntry.Insert(true);
        end;
    end;

}