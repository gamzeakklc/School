table 71117 department
{
    Caption = 'department';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "departmentdID"; code[20])
        {
            Caption = 'DepertmentID';
        }
        field(2; departmentName; code[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Departmentname';

        }
        field(3; LessonsName; code[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Lessonname';

        }
    }
    keys
    {
        key(PK; "departmentdID", "departmentName")
        {
            Clustered = true;

        }

    }



    fieldgroups
    {
        fieldgroup(Dropdown; departmentdID, departmentName, LessonsName)
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
        if Rec.departmentdID = '' then begin
            schoolsetup.TestField("student No-Series");
            Rec.departmentdID := NoSeries.GetNextNo(schoolsetup."student No-Series", WorkDate());
            while student.get(departmentdID) do
                Rec.departmentdID := NoSeries.GetNextNo(schoolsetup."student No-Series", WorkDate());
        end;
    end;
}