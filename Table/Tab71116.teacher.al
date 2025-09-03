table 71116 teacher
{
    Caption = 'teacher';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "teacherId"; code[20])
        {
            Caption = 'teacherid.';
            trigger OnValidate()
            var
                myInt: Integer;
                NoSeries: Codeunit "No. Series";
                schoolsetup: Record "schoolsetup";
            begin
                schoolsetup.GetRecordOnce();
                if Rec.teacherId = xRec.teacherId then
                    exit;
                if Rec.teacherId = '' then begin
                    schoolsetup.TestField("Teacher No-Series");
                    Rec.teacherId := NoSeries.GetNextNo(schoolsetup."Teacher No-Series", WorkDate());
                end;
            end;
        }
        field(2; teachername; text[100])
        {
            DataClassification = ToBeClassified;
            caption = 'Teachername.';
        }

        field(3; teachersurname; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Teachersurname.';
        }
        field(4; teacherlesson; text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Theleesonsteachergave';
            TableRelation = Lessons.LessonsName;
        }
        field(5; department; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Department';
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

    trigger OnInsert()
    var
        myInt: Integer;
        NoSeries: Codeunit "No. Series";
        schoolsetup: Record "schoolsetup";
        student: Record student;
    begin
        schoolsetup.GetRecordOnce();
        if Rec.teacherId = '' then begin
            schoolsetup.TestField("teacher No-Series");
            Rec.teacherId := NoSeries.GetNextNo(schoolsetup."teacher No-Series", WorkDate());
            while student.get(teacherId) do
                Rec.teacherId := NoSeries.GetNextNo(schoolsetup."teacher No-Series", WorkDate());
        end;
    end;


}