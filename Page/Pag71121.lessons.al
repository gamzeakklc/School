page 71121 lessons
{
    ApplicationArea = All;
    Caption = 'lessons';
    PageType = List;
    SourceTable = Lessons;
    UsageCategory = Lists;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(LessonsID; Rec.LessonsID)
                {

                }
                field(LessonCredit; Rec.LessonCredit)
                {

                }
                field(LessonsName; Rec.LessonsName)
                {
                }
                //lessons pageimin içine departman alanlarını ekledim çümkü departman lessons gözükmüyordu.
                field(departmentID; Rec.departmentID)
                {
                    ToolTip = 'Specifies the value of the departmentdID field.', Comment = '%';
                }
                field(DepartmentName; Rec.DepartmentName)
                {
                    ToolTip = 'Specifies the value of the DepartmentName field.', Comment = '%';
                }
            }
        }

    }

}