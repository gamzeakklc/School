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
                    Caption = 'lessons id.';
                    ApplicationArea = all;
                }
                field(LessonCredit; Rec.LessonCredit)
                {
                    Caption = 'lessons credit.';
                    ApplicationArea = all;
                }
                field(LessonsName; Rec.LessonsName)
                {
                    Caption = 'lessons name.';
                    ApplicationArea = all;
                }
                //lessons pageimin içine departman alanlarını ekledim çümkü departman lessons gözükmüyordu.
                field(departmentID; Rec.departmentID)
                {
                    Caption = 'department id.';
                    ApplicationArea = all;
                }
                field(DepartmentName; Rec.DepartmentName)
                {
                    Caption = 'department name.';
                    ApplicationArea = all;
                }
            }
        }

    }

}