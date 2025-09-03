table 71118 Lessons
{
    Caption = 'Lessons';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "LessonsID"; Code[20])
        {
            Caption = 'LessonsID';
            DataClassification = ToBeClassified;

        }
        field(2; LessonsName; text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'LessonsName';
        }
        field(3; "LessonCredit"; Integer)
        {
            Caption = 'LEssonCredit';
            DataClassification = ToBeClassified;
        }
        field(4; departmentID; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'DepartmentdID';
            TableRelation = department.departmentdID;
        }
        field(5; teachername; text[100])
        {
            DataClassification = ToBeClassified;
            caption = 'Teachername';
        }
        field(6; teachersurname; text[100])
        {
            caption = 'Teachersurname';
            DataClassification = ToBeClassified;
        }
        field(7; DepartmentName; Code[100])
        {
            Caption = 'Departmentname';
            DataClassification = ToBeClassified;
            TableRelation = department.departmentName;
        }
    }



    keys
    {
        key(PK; "LessonsID")
        {
            Clustered = true;
        }
    }
    /*key(FK; departmentID, teachername, teachersurname)
    {
        Clustered = false;
    }

}*/
    fieldgroups
    {
        fieldgroup(DropDown; LessonsID, LessonsName)
        {

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
        if Rec.LessonsID = '' then begin
            schoolsetup.TestField("lessons No-Series");
            Rec.LessonsID := NoSeries.GetNextNo(schoolsetup."lessons No-Series", WorkDate());
            while student.get(LessonsID) do
                Rec.LessonsID := NoSeries.GetNextNo(schoolsetup."lessons No-Series", WorkDate());
        end;
    end;


}
