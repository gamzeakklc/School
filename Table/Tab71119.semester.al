table 71119 semester
{
    //semester sıkıntılı hiçbir şeye yaramıyor.
    Caption = 'semester';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "springsemester"; Date)
        {
            Caption = 'Springsemester';
        }
        field(2; "autumnsemester"; Blob)
        {
            DataClassification = ToBeClassified;
            Caption = 'Autumnsemester';
        }
        field(3; Date2DMY; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date2datemonthyear';


        }
    }

    keys
    {
        key(PK; "Date2DMY")
        {
            Clustered = true;
        }
    }
}
