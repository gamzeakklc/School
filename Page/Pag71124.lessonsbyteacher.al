page 71124 lessonsbyteacher
{
    ApplicationArea = All;
    Caption = 'lessonsbyteacher';
    PageType = List;
    SourceTable = lessonsbyteacher;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(d)
            {
                field(teacher; Rec.teacher)
                {
                    ToolTip = 'teacher information';
                }
                field(lessons; Rec.lessons)
                {
                    ToolTip = 'lessons information';
                }
            }
        }
    }
}
