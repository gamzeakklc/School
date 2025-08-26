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
            caption = 'Student name';
        }
        field(3; studentsurname; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'student surname';
        }
        field(4; departmentofstudent; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'student department';
            TableRelation = department.departmentName;

        }
        field(5; studentnotes; Decimal)
        {
            Caption = 'student notes';
            TableRelation = notesbystudent;
            ValidateTableRelation = true;

        }
        field(6; studentlessons; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'student lessons';
            TableRelation = Lessons;

        }
        field(7; MailAddress; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'student mailaddress';

        }
        field(8; registrationdate; Date)//kayıt tarihi
        {
            DataClassification = ToBeClassified;
            Caption = 'student registrationdate';
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
        NoSeries: Codeunit "No. Series";
    begin
        //  NoSeries.GetNextNo()
    end;

    var

}
