page 71123 lessonsbystudent
{
    ApplicationArea = All;
    Caption = 'lessonsbystudent';
    PageType = List;
    SourceTable = lessonsbystudent;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field(lessons; Rec.lessons)
                {
                    Caption = 'lessons';
                }
                field(student; Rec.student)
                {
                    Caption = 'student';
                }
            }
        }
    }
}
