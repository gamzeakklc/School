table 71120 lessonsbystudent//dersler öğrenci N-N ayrı bir page.
{
    Caption = 'lessonsbystudent';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "lessons"; Text[100])
        {
            Caption = 'Lessons';
            TableRelation = Lessons;
        }
        field(2; "student"; Text[100])
        {
            Caption = 'Student';
            DataClassification = ToBeClassified;
            TableRelation = student;
        }
        field(4; "semester"; Text[100])
        {
            Caption = 'Semester';
            TableRelation = semester;
        }

        field(3; id; Code[20])
        {
            Caption = 'Id';
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
