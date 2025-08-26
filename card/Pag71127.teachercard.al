page 71127 teachercard
{
    ApplicationArea = All;
    Caption = 'teachercard';
    PageType = Card;
    SourceTable = teacher;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
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
                    TableRelation = Lessons.LessonsName;
                }

            }
        }
    }
}
