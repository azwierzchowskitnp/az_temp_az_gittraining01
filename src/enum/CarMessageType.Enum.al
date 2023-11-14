enum 50102 "Car Message Type" implements "Car Message Mgt."
{
    Extensible = true;

    value(0; Short)
    {
        Caption = 'Short';
        Implementation = "Car Message Mgt." = ShortCarMessageMgt;
    }
    value(1; Long)
    {
        Caption = 'Long';
        Implementation = "Car Message Mgt." = LongCarMessageMgt;
    }
}
