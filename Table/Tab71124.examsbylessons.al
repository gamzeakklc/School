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
            //TableRelation = notes.exam1;
        }

        field(5; "Exam2 Date"; Date)
        {
            Caption = 'EXAM2 DATE';
            //TableRelation = notes.exam2;
        }
        field(6; "Exam3 Date"; Date)
        {
            Caption = 'EXAM3 DATE';
            //TableRelation = notes."final exam";
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


    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

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
