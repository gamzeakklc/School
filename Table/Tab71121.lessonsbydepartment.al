table 71121 lessonsbydepartment
{
    Caption = 'lessonsbydepartment';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "lessonID"; Code[20])
        {
            Caption = 'LessonID';
            TableRelation = Lessons;
        }
        field(2; "departmentID"; code[20])
        {
            Caption = 'DepartmentID';
            tablerelation = department;
        }
        field(3; DepartmentName; text[250])
        {
            Caption = 'Department Name';
            FieldClass = flowfield;
            Editable = false;
            CalcFormula = lookup(department.departmentName where(departmentdID = field(departmentID)));
            TableRelation = department.departmentName where(departmentdID = field(departmentID));
        }
        field(4; LessonName; Text[100])
        {
            Caption = 'Lesson Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Lessons.LessonsName where(LessonsID = field(lessonID)));            //TableRelation = Lessons.LessonsName where(LessonsID = field(lessonID));
        }
    }
    keys
    {
        key(PK; "lessonID", "departmentID")
        {
            Clustered = true;
        }
    }
}
