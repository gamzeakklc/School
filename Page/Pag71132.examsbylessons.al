page 71132 examsbylessons
{
    ApplicationArea = All;
    Caption = 'exambylessons';
    PageType = List;
    SourceTable = examsbylessons;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Lesson Code"; Rec."Lesson Code")
                {
                    Caption = 'Lessons Code';
                    ToolTip = 'Specifies the value of the Ders field.', Comment = '%';
                }
                field("Exam1 Date"; Rec."Exam1 Date")
                {
                    Caption = 'Exam1 Date';
                    ToolTip = 'Specifies the value of the Sinav Tarihi field.', Comment = '%';


                }
                field("Exam2 Date"; Rec."Exam2 Date")
                {
                    Caption = 'Exam2 Date';
                    ToolTip = 'Specifies the value of the EXAM2 DATE field.', Comment = '%';

                }
                field("Exam3 Date"; Rec."Exam3 Date")
                {
                    Caption = 'Exam3 Date';
                    ToolTip = 'Specifies the value of the EXAM3 DATE field.', Comment = '%';
                }
                field("Entry No."; Rec."Entry No.")
                {
                    Caption = 'Entry No.';
                    ToolTip = 'Specifies the value of the Entry No. field.', Comment = '%';
                }

                field("Is Exam1 Finished"; Rec."Is Exam1 Finished")
                {
                    ToolTip = 'Specifies the value of the Bitti mi? field.', Comment = '%';
                    Caption = 'Is Exam1 Finished';
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Is Exam2 Finished"; Rec."Is Exam2 Finished")
                {
                    ToolTip = 'Specifies the value of the Is Exam2 Finished? field.', Comment = '%';
                    Caption = 'Is Exam2 Finished';
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Is Exam3 Finished"; Rec."Is Exam3 Finished")
                {
                    ToolTip = 'Specifies the value of the Is Exam3 Finished? field.', Comment = '%';
                    Caption = 'Is Exam3 Finished';
                    ApplicationArea = all;
                    Editable = false;
                }
                field("lesson no."; Rec."lesson no.")
                {
                    ToolTip = 'Specifies the value of the lesson no. field.', Comment = '%';
                }
                field(whichsemester; Rec.whichsemester)
                {
                    ToolTip = 'Specifies the value of the whichsemester field.', Comment = '%';
                }


            }
        }
    }
    var
        IsExam1FinishedVar: Boolean;
        IsExam2FinishedVar: Boolean;
        IsExam3FinishedVar: Boolean;

    trigger OnAfterGetCurrRecord()
    var
        TodayDate: Date;
        IsFinished: Boolean;
        notes: Record notes;
        examsbylessons: Record examsbylessons;

    begin
        TodayDate := Today();
        IsFinished := false;
        if (Rec."Exam1 Date" < today) then begin
            rec."Is Exam1 Finished" := true;

        end;
        if (Rec."Exam2 Date" < today) then begin
            rec."Is Exam2 Finished" := true
        end;

        if (rec."Exam3 Date" < Today) then begin
            rec."Is Exam3 Finished" := true
        end;

        if Rec.Modify() then;

    end;

}
