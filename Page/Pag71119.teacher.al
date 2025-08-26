page 71119 teacher
{
    ApplicationArea = All;
    Caption = 'teacher';
    PageType = List;
    SourceTable = teacher;
    UsageCategory = Lists;
    CardPageId = teachercard;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(teacherId; Rec.teacherId)
                {
                }
                field(teachername; Rec.teachername)
                {
                }
                field(teachersurname; Rec.teachersurname)
                {

                }
                field(thelessonssteachergave; Rec.teacherlesson)
                {
                    TableRelation = Lessons;
                }
            }
        }
    }
}
