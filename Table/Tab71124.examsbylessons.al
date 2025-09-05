table 71124 examsbylessons
{
    Caption = 'examsbylessons';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
        }

        field(2; "Lesson Code"; Code[20])
        {
            Caption = 'LESSONS CODE';
            TableRelation = Lessons.LessonsID;
        }
        field(4; "Exam1 Date"; Date)
        {
            Caption = 'EXAM1 DATE';
            trigger OnValidate()
            var
                NotesRec: Record notes;
            begin
                today := today;
                if NotesRec.Get("Lesson Code") then
                    NotesRec.Recalculate();

                if "Exam1 Date" <> 0D then begin
                    if "Exam1 Date" < today then
                        "Is Exam1 Finished" := true
                    else
                        "Is Exam1 Finished" := false;
                end;
                "Is Exam1 Finished" := false;

            end;
        }

        field(5; "Exam2 Date"; Date)
        {
            Caption = 'EXAM2 DATE';
            trigger OnValidate()
            var
                NotesRec: Record notes;
            begin
                today := today;
                if NotesRec.Get("Lesson Code") then
                    NotesRec.Recalculate();

                if (rec."Exam1 Date" > rec."Exam2 Date") then begin
                    Error('EXAM1,EXAM2 tarihinden geç gerçekleşemez.');
                end;
                today := today;
                if "Exam2 Date" <> 0D then begin
                    if "Exam2 Date" < today then
                        "Is Exam2 Finished" := true
                    else
                        "Is Exam2 Finished" := false;
                end;
                "Is Exam2 Finished" := false;
            end;

        }
        field(6; "Exam3 Date"; Date)
        {
            Caption = 'EXAM3 DATE';
            trigger OnValidate()
            var
                NotesRec: Record notes;
            begin
                today := today;
                if NotesRec.Get("Lesson Code") then
                    NotesRec.Recalculate();

                if (rec."Exam2 Date" > rec."Exam3 Date") then begin
                    Error('EXAM2,EXAM3 tarihinden geç gerçekleşemez.');
                end;

                today := today;
                if "Exam3 Date" <> 0D then begin
                    if "Exam3 Date" < today then
                        "Is Exam3 Finished" := true
                    else
                        "Is Exam3 Finished" := false;
                end;
                "Is Exam3 Finished" := false;

            end;
        }

        field(7; "Is Exam1 Finished"; Boolean)
        {
            // FieldClass = FlowField;
            // CalcFormula = lookup(notes."Is Exam1 Finished" where("Lesson No." = field("Lesson Code")));
            Caption = ' Is Exam1 Finished ?';
            Editable = false;
        }
        field(8; "Is Exam2 Finished"; Boolean)
        {
            //    FieldClass = FlowField;
            //    CalcFormula = lookup(notes."Is Exam2 Finished" where("Lesson No." = field("Lesson Code")));
            Caption = 'Is Exam2 Finished?';
            Editable = false;
        }
        field(9; "Is Exam3 Finished"; Boolean)
        {
            //   FieldClass = FlowField;
            //   CalcFormula = lookup(notes."Is Exam3 Finished" where("Lesson No." = field("Lesson Code")));
            Caption = 'Is Exam3 Finished?';
            Editable = false;
        }

        field(11; "lesson no."; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = semester."lesson no";
        }
        field(12; semester; Integer)
        {
            TableRelation = semester.whichsemester;
        }
        field(89; whichsemester; Enum "semester")
        {
            FieldClass = FlowField;
            CalcFormula = lookup(semester.whichsemester where("lesson no" = field("lesson no.")));
            Caption = 'whichsemester';

        }

    }
    keys
    {
        key(PK; "Entry No.", "Lesson Code")
        {
            Clustered = true;
        }
    }

    var
        today: date;
        semester: Record semester;

    /* trigger OnInsert()
     var
         myInt: Integer;
         NoSeries: Codeunit "No. Series";
         schoolsetup: Record "schoolsetup";
         exams: Record examsbylessons;
     begin
         schoolsetup.GetRecordOnce();
         if Rec."Exam No." = '' then begin
             schoolsetup.TestField("exams No-Series");
             Rec."Exam No." := NoSeries.GetNextNo(schoolsetup."exams No-Series", WorkDate());
             while exams.get("Exam No.") do
                 Rec."Exam No." := NoSeries.GetNextNo(schoolsetup."exams No-Series", WorkDate());
         end;
     end;*/

}
