codeunit 50103 "Car Json Mgt."
{

    procedure TestHttpCall()
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        TextResponse: Text;
    begin
        if (Client.Get('https://www.google.co.uk', Response)) then begin
            Response.Content.ReadAs(TextResponse);
            Message(TextResponse);
        end;
    end;

    procedure ImportJson()
    var
        JsonText: Text;
        JsonObject: JsonObject;
        NameJsonToken: JsonToken;
        MessageText: Text;
    begin
        JsonText := '{ "name": "name value" }';

        if (JsonObject.ReadFrom(JsonText)) then
            if (JsonObject.Get('name', NameJsonToken)) then begin
                MessageText := NameJsonToken.AsValue().AsText();
                message(MessageText);
            end;

    end;

    procedure DownloadCars()
    var
        CarsJsonArray: JsonArray;
        TempBlob: Codeunit "Temp Blob";
        InputStream: InStream;
        OutputStream: OutStream;
        FIleName: Text;
    begin
        CarsJsonArray := ExportCars();

        TempBlob.CreateOutStream(OutputStream);
        CarsJsonArray.WriteTo(OutputStream);

        TempBlob.CreateInStream(InputStream);

        FIleName := 'cars.json';
        DownloadFromStream(InputStream, 'Downlaod', '', '', FIleName);
    end;

    procedure ExportCars(): JsonArray
    var
        CarsJsonArray: JsonArray;
        CarJsonObject: JsonObject;
        Car: Record Car;
    begin
        Car.Reset();
        if (Car.FindSet()) then
            repeat
                CarJsonObject := ExportCar(Car);
                CarsJsonArray.Add(CarJsonObject);
            until (Car.Next() = 0);
        exit(CarsJsonArray);
    end;

    procedure ExportCar(var Car: Record Car): JsonObject
    var
        CarJsonObject: JsonObject;
    begin
        CarJsonObject.Add('no', Car."No.");
        CarJsonObject.Add('brand', Car."Brand Code");
        CarJsonObject.Add('model', Car."Model Code");
        CarJsonObject.Add('regNo', Car."Registration No.");
        exit(CarJsonObject);
    end;

}