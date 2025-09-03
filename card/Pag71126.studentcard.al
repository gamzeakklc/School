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
                Caption = 'studentcard';
                field(studentno; Rec.studentno)
                {
                    ApplicationArea = all;
                    Caption = 'student no.';
                }
                field(studentname; Rec.studentname)
                {
                    ApplicationArea = all;
                    Caption = 'student name';


                }
                field(studentsurname; Rec.studentsurname)
                {
                    ApplicationArea = all;
                    Caption = 'student surname';


                }
                field(departmentofstudent; Rec.departmentofstudent)
                {
                    ApplicationArea = all;
                    Caption = 'student department';


                }
                field(studentlessons; Rec.studentlessons)
                {
                    ApplicationArea = all;
                    Caption = 'student lessons';

                }
                field(MailAddress; Rec.MailAddress)
                {
                    ApplicationArea = all;
                    Caption = 'student mail address.';


                }
                field(registrationdate; Rec.registrationdate)
                {
                    ApplicationArea = all;
                    Caption = 'student registration date.';


                }

            }
        }
    }

}