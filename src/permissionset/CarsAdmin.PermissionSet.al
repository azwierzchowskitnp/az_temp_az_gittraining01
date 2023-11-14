permissionset 50100 CarsAdmin
{
    Assignable = true;
    Caption = 'CarsAdmin', MaxLength = 30;
    Permissions =
        table "Car History Entry" = X,
        tabledata "Car History Entry" = RMID,
        table Model = X,
        tabledata Model = RMID,
        table Brand = X,
        tabledata Brand = RMID,
        table Car = X,
        tabledata Car = RMID,
        codeunit "Car Events Subscribers" = X,
        codeunit LongCarMessageMgt = X,
        codeunit ShortCarMessageMgt = X,
        codeunit "Car Json Mgt." = X,
        page "Car Card Subpage" = X,
        page Models = X,
        page "Car Card" = X,
        page Brands = X,
        page "Car List" = X,
        report "Cars Report" = X,
        xmlport "Car Import" = X,
        xmlport "Car Export" = X;
}
