page 71127 teachercard
{
    ApplicationArea = All;
    Caption = 'teachercard';
    PageType = Card;
    SourceTable = teacher;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'teachercard';
                field(teacherId; Rec.teacherId)
                {
                    Caption = 'teacher id.';
                    ApplicationArea = all;

                }
                field(teachername; Rec.teachername)
                {
                    Caption = 'teacher name.';
                    ApplicationArea = all;

                }
                field(teachersurname; Rec.teachersurname)
                {
                    Caption = 'teacher surname.';
                    ApplicationArea = all;
                }
                field(thelessonssteachergave; Rec.teacherlesson)
                {
                    TableRelation = Lessons.LessonsName;
                    Caption = 'teacher gave the lessons .';
                    ApplicationArea = all;
                }

            }
        }
    }
}
