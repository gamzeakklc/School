page 71126 studentcard
{
    ApplicationArea = All;
    Caption = 'Student İnformation';
    PageType = Card;
    SourceTable = student;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(studentno; Rec.studentno)
                {
                    ApplicationArea = all;
                }
                field(studentname; Rec.studentname)
                {
                    ApplicationArea = all;

                }
                field(studentsurname; Rec.studentsurname)
                {
                    ApplicationArea = all;

                }
                field(departmentofstudent; Rec.departmentofstudent)
                {
                    ApplicationArea = all;

                }
                field(studentlessons; Rec.studentlessons)
                {
                    ApplicationArea = all;

                }
                field(studentnotes; Rec.studentnotes)
                {
                    ApplicationArea = all;

                }
                field(MailAddress; Rec.MailAddress)
                {
                    ApplicationArea = all;

                }
                field(registrationdate; Rec.registrationdate)
                {
                    ApplicationArea = all;

                }

            }
        }
    }
}