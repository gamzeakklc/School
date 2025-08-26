table 71119 semester
{
    //semester sıkıntılı hiçbir şeye yaramıyor.
    Caption = 'semester';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "springsemester"; Date)
        {
            Caption = 'springsemester';
        }
        field(2; "autumnsemester"; Blob)
        {
            DataClassification = ToBeClassified;
            Caption = 'autumnsemester';
        }
        field(3; Date2DMY; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'datetodatemonthyear';


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
