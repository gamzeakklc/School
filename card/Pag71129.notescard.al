page 71129 notescard
{
    ApplicationArea = All;
    Caption = 'notescard';
    PageType = Card;
    SourceTable = notes;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'notescard';
                field(exam1; Rec.exam1)
                {
                    Caption = 'exam1.';
                    ApplicationArea = all;
                }
                field(exam2; Rec.exam2)
                {
                    Caption = 'exam2.';
                    ApplicationArea = all;
                }
                field("final exam"; Rec."final exam")
                {
                    Caption = 'finalexam.';
                    ApplicationArea = all;
                }
                field("Student No."; Rec."Student No.")
                {
                    Caption = 'student no.';
                    ApplicationArea = all;
                }
                field("Lesson No."; Rec."Lesson No.")
                {
                    Caption = 'lesson no.';
                    ApplicationArea = all;
                }
            }
        }
    }
}