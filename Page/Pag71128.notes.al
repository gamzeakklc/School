page 71128 notes
{
    ApplicationArea = All;
    Caption = 'notes';
    PageType = List;
    SourceTable = notes;
    UsageCategory = Lists;
    CardPageId = notescard;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Student No."; Rec."Student No.")
                {
                    ApplicationArea = All;
                    Caption = 'student no.';

                }
                field("Lesson No."; Rec."Lesson No.")
                {
                    ApplicationArea = All;
                    Caption = 'lesson no.';

                }
                field(exam1; Rec.exam1)
                {
                    ApplicationArea = All;
                    Caption = 'exam1.';


                }
                field(exam2; Rec.exam2)
                {
                    Caption = 'exam2.';
                    ApplicationArea = All;
                    Editable = Rec."Is Exam1 Finished";

                    /* trigger OnValidate()
                  /*   begin
                         if rec."exam1" = 0 then
                             Error('please enter exam1 values.');
                     end;*/
                }
                field("final exam"; Rec."final exam")
                {
                    ApplicationArea = All;
                    Caption = 'fianl exam.';
                    Editable = Rec."Is Exam2 Finished";

                }
                field(average; Rec.average)
                {
                    Caption = 'average.';
                    ApplicationArea = All;
                    Editable = false;
                    StyleExpr = AverageStyle;//değişken

                }
                /*  field(averagepass; Rec.average)
                  {
                      ApplicationArea = All;
                      Style = Favorable;//yeşil olsun
                      StyleExpr = IsPass;//ne zaman olsun
                      Editable = false;
                  }
                  field(averagefail; Rec.average)
                  {
                      ApplicationArea = All;
                      Style = Unfavorable;//kırmızı olsun
                      StyleExpr = IsFail;//ne zaman olsun
                      Editable = false;
                  }*/
                field("letter grade"; Rec."letter grade")
                {
                    Caption = 'letter grade.';
                    ApplicationArea = All;
                    Editable = false;
                    StyleExpr = LetterStyle;//değişken
                }
            }
        }
    }
    var
        styleexpr: Text;//style özelliğindeki formatın alanla uyumlanıp uyumlanmadığını anlar.
        style: text;//hangi görsel stili uygulayacağını ayarlar.
        stylecolor: Text[20];
        IsFavorable: Boolean;
        AverageStyle: text;
        LetterStyle: text;
        IsPass: Boolean;
        IsFail: Boolean;
    //validasyon sırasında sayfa güncelleme, sınav 1 yapılmadan sınav 2'yi tikleyememe vs.
    trigger OnAfterGetRecord()

    begin

        case true of
            Rec."average" >= 50:
                AverageStyle := 'Favorable';
            else
                AverageStyle := 'Unfavorable';
        end;
        case true of
            Rec."letter grade" = 'FF':
                LetterStyle := 'Unfavorable';
            (Rec."letter grade" = 'FD') or (Rec."letter grade" = 'DD'):
                LetterStyle := 'Attention';
            (Rec."letter grade" = 'CC') or (Rec."letter grade" = 'DC'):
                LetterStyle := 'Ambiguous';
            else
                LetterStyle := 'Favorable';
        end;
    end;
}
