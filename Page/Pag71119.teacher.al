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
                    TableRelation = Lessons;
                    Caption = 'thelessonssteachergave';
                    ApplicationArea = all;
                }
            }
        }
    }
}
