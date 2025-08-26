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
            Caption = 'departmentdID';
            TableRelation = department.departmentdID;
        }
        field(5; teachername; text[100])
        {
            DataClassification = ToBeClassified;
            caption = 'teachername';
        }
        field(6; teachersurname; text[100])
        {
            caption = 'teachersurname';
            DataClassification = ToBeClassified;
        }
        field(7; DepartmentName; Code[100])
        {
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


}
