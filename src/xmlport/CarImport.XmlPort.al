xmlport 50101 "Car Import"
{
    Direction = Import;
    Caption = 'Car Import';

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Car; Car)
            {
                UseTemporary = true;

                fieldelement(No; Car."No.")
                {
                }
                fieldelement(BrandCode; Car."Brand Code")
                {
                }
                fieldelement(ModelCode; Car."Model Code")
                {
                }
                fieldelement(RegistrationNo; Car."Registration No.")
                {
                }
                fieldelement(Year; Car.Year)
                {
                }
                fieldelement(EngineType; Car."Engine Type")
                {
                }
                fieldelement(EngineSize; Car."Engine Size")
                {
                }
                fieldelement(Colour; Car.Colour)
                {
                }
                fieldelement(Notes; Car.Notes)
                {
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }

    trigger OnPostXmlPort()
    begin
        if (Car.FindSet()) then
            repeat
            until (Car.Next() = 0);
    end;
}
