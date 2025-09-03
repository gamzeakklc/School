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
                    Caption = 'student no.';
                    ApplicationArea = all;
                }
                field(studentname; Rec.studentname)
                {
                    Caption = 'student name.';
                    ApplicationArea = all;
                }
                field(studentsurname; Rec.studentsurname)
                {
                    Caption = 'student surname.';
                    ApplicationArea = all;
                }
                field(departmentofstudent; Rec.departmentofstudent)
                {
                    Caption = 'departmentofstudent.';
                    ApplicationArea = all;
                }
                field(studentlessons; Rec.studentlessons)
                {
                    Caption = 'studentlessons.';
                    ApplicationArea = all;
                }
                field(MailAddress; Rec.MailAddress)
                {
                    Caption = 'mail address.';
                    ApplicationArea = all;
                }
                field(registrationdate; Rec.registrationdate)
                {
                    Caption = 'registrationdate.';
                    ApplicationArea = all;
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