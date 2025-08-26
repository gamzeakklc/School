table 71116 teacher
{
    Caption = 'teacher';
    DataClassification = ToBeClassified;
    //sdfghjklşi
    fields
    {
        field(1; "teacherId"; code[20])
        {
            Caption = 'teacherid.';
        }
        field(2; teachername; text[100])
        {
            DataClassification = ToBeClassified;
            caption = 'teachername.';
        }
        field(3; teachersurname; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'teachersurname.';
        }
        field(4; teacherlesson; text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'theleesonsteachergave';
            TableRelation = Lessons.LessonsName;
        }
        field(5; department; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'hangihocahangibölüm';
            TableRelation = department.departmentName;
        }
    }
    keys
    {
        key(PK; "teacherId")
        {
            Clustered = true;
        }
        key(teacher; teachername)
        {
            //illa ki foreign key olmasına gerek yok normal bir şekilde tanımlama yeterli.
            //enes abi.  }
        }
    }
}