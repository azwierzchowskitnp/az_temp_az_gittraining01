report 50100 "Cars Report"
{
    ApplicationArea = All;
    Caption = 'Cars Report';
    UsageCategory = History;
    DefaultLayout = Word;
    WordLayout = 'CarsReport.docx';

    dataset
    {
        dataitem(Car; Car)
        {
            column(No; "No.")
            {
            }
            column(BrandCode; "Brand Code")
            {
            }
            column(ModelCode; "Model Code")
            {
            }
            column(RegistrationNo; "Registration No.")
            {
            }
            column(Year; Year)
            {
            }
            column(EngineType; "Engine Type")
            {
            }
            column(EngineSize; "Engine Size")
            {
            }
        }
    }
}
