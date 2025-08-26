table 71117 department
{
    Caption = 'department';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "departmentdID"; code[20])
        {
            Caption = 'depertmentID';
        }
        field(2; departmentName; code[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'departmentname';

        }
        field(3; LessonsName; code[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'lessonname';

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
}