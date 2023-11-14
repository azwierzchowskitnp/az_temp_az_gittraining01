xmlport 50100 "Car Export"
{
    Direction = Export;
    Caption = 'Car Export';

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Car; Car)
            {
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
}
