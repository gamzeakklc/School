table 71114 student
{
    Caption = 'student';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "studentno"; Code[20])
        {
            Caption = 'student no.';
            trigger OnValidate()
            var
                myInt: Integer;
                NoSeries: Codeunit "No. Series";
                schoolsetup: Record "schoolsetup";
            begin
                schoolsetup.GetRecordOnce();
                if Rec.studentno = xRec.studentno then
                    exit;
                if Rec.studentno = '' then begin
                    schoolsetup.TestField("student No-Series");
                    Rec.studentno := NoSeries.GetNextNo(schoolsetup."student No-Series", WorkDate());
                end;
            end;
        }
        field(2; studentname; text[2048])
        {
            DataClassification = ToBeClassified;
            caption = 'Student Name';
        }
        field(3; studentsurname; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Surname';
        }
        field(4; departmentofstudent; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Department';
            TableRelation = department.departmentName;
        }

        field(6; studentlessons; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Lessons';
            TableRelation = Lessons;

        }
        field(7; MailAddress; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Mailaddress';

        }
        field(8; registrationdate; Date)//kayıt tarihi
        {
            DataClassification = ToBeClassified;
            Caption = 'Student RegistrationDate';
        }

    }
    keys
    {
        key(PK; "studentno")
        {
            Clustered = true;
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
        if Rec.studentno = '' then begin
            schoolsetup.TestField("student No-Series");
            Rec.studentno := NoSeries.GetNextNo(schoolsetup."student No-Series", WorkDate());
            while student.get(studentno) do
                Rec.studentno := NoSeries.GetNextNo(schoolsetup."student No-Series", WorkDate());
        end;
    end;



}
