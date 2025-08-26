page 71118 student
{
    ApplicationArea = All;
    Caption = 'student';
    PageType = List;
    SourceTable = student;
    UsageCategory = Lists;
    CardPageId = studentcard;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(studentno; Rec.studentno)
                {
                }
                field(studentname; Rec.studentname)
                {
                }
                field(studentsurname; Rec.studentsurname)
                {

                }
                field(departmentofstudent; Rec.departmentofstudent)
                {

                }
                field(studentlessons; Rec.studentlessons)
                {

                }
                field(studentnotes; Rec.studentnotes)
                {

                }
                field(MailAddress; Rec.MailAddress)
                {

                }
                field(registrationdate; Rec.registrationdate)
                {

                }

            }
        }
    }
    actions
    {
        area(Processing)
        {
            group(showinfo)
            {
                action(show)
                {
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    trigger OnAction()
                    begin
                        showourinformation();

                    end;
                }
            }
        }
    }
    local procedure showourinformation()
    var
        myInt: Integer;
    begin
        Message('Bilgileriniz aşağıda listelenecektir.');
    end;



}
