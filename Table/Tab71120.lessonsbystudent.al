table 71120 lessonsbystudent//dersler öğrenci N-N ayrı bir page.
{
    Caption = 'lessonsbystudent';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "lessons"; Text[100])
        {
            Caption = '';
            TableRelation = Lessons;
        }
        field(2; "student"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = student;
        }
        field(4; "semester"; Text[100])
        {
            TableRelation = semester;
        }

        field(3; id; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {

        key(PK; "student", "lessons")
        {
            Clustered = true;
        }

    }
}
