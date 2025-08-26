page 71125 lessonsbydepartment
{
    ApplicationArea = All;
    Caption = 'lessonsbydepartment';
    PageType = List;
    SourceTable = lessonsbydepartment;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(departmentID; Rec.departmentID)
                {
                    ToolTip = 'Specifies the value of the departmentID field.', Comment = '%';
                }
                field(DepartmentName; Rec.DepartmentName)
                {
                    ToolTip = 'Specifies the value of the Department Name field.', Comment = '%';
                }
                field(lessonID; Rec.lessonID)
                {
                    ToolTip = 'Specifies the value of the lessonID field.', Comment = '%';
                }
                field(LessonName; Rec.LessonName)
                {
                    ToolTip = 'Specifies the value of the Lesson Name field.', Comment = '%';
                }
            }
        }
    }
}
