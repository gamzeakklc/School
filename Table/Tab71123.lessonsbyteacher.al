table 71123 lessonsbyteacher
{
    Caption = 'lessonsbyteacher';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "lessons"; Text[100])
        {
            Caption = 'Leesons';
            TableRelation = Lessons;
            ToolTip = 'burada ders bilgilerini görüntüleriz';
        }
        field(2; "teacher"; text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Teacher';
            TableRelation = teacher;
            ToolTip = 'burada öğretmen bilgilerini görüntüleriz.';
        }
    }
    keys
    {
        key(PK; "lessons", "teacher")
        {
            Clustered = true;
        }
    }
}
