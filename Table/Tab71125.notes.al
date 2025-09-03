table 71125 notes
{
    Caption = 'notes';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student No."; Code[20])
        {
            caption = 'Student no.';
            TableRelation = student;
            DataClassification = CustomerContent;
        }
        field(2; "Lesson No."; Code[20])
        {
            caption = 'Lesson no.';
            TableRelation = Lessons;
            DataClassification = CustomerContent;
        }
        field(3; "exam1"; Integer)
        {
            Caption = 'Exam1 result.';
            MinValue = 0;
            MaxValue = 100;
            trigger OnValidate()
            begin
                Recalculate();
                CalculateLetterGrade();
            end;

        }
        field(4; "exam2"; integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Exam2 result.';
            MinValue = 0;
            MaxValue = 100;
            trigger OnValidate()
            begin
                Recalculate();
                CalculateLetterGrade();

                if rec.exam1 = 0 then
                    FieldError(exam1, 'please enter exam1 values.');
            end;
        }
        field(5; "final exam"; Integer)
        {
            Caption = 'Final exam result';
            MinValue = 0;
            MaxValue = 100;
            trigger OnValidate()
            begin
                Recalculate();
                CalculateLetterGrade();

                if rec.exam2 = 0 then
                    FieldError(exam2, 'please enter exam2 values.');
            end;
        }

        field(6; "average"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Average.';
            Editable = false;
            trigger OnValidate()
            begin
                Recalculate();
                CalculateLetterGrade();
            end;
        }
        field(7; "letter grade"; Code[20])
        {
            Editable = false;
            Caption = 'Letter grade';
            trigger OnValidate()
            begin
                Recalculate();
                CalculateLetterGrade();
            end;
        }
        field(8; "Is Exam1 Finished"; boolean)
        {
            Caption = 'Is Exam1 Finished?';
            FieldClass = FlowField;
            CalcFormula = lookup(examsbylessons."Is Exam1 Finished" where("Lesson Code" = field("Lesson No.")));
            Editable = false;
            trigger OnValidate()
            var
            begin
                //  CalcFields("Is Exam1 Finished");
                Recalculate();
                CalculateLetterGrade();
            end;
            //databasede oluşmaz çağıramam,calcfields .
        }
        field(9; "Is Exam2 Finished"; boolean)
        {
            Caption = 'Is Exam2 Finished?';
            FieldClass = FlowField;
            CalcFormula = lookup(examsbylessons."Is Exam2 Finished" where("Lesson Code" = field("Lesson No.")));
            Editable = false;
            trigger OnValidate()
            var
            begin
                //   CalcFields("Is Exam2 Finished");

                Recalculate();
                CalculateLetterGrade();
            end;
        }
        field(10; "Is Exam3 Finished"; Boolean)
        {
            Caption = 'Is Exam3 Finished?';
            FieldClass = flowfield;
            calcformula = lookup(examsbylessons."Is Exam3 Finished" where("Lesson Code" = field("Lesson No.")));
            Editable = false;
            trigger OnValidate()
            var
            begin

                //  CalcFields("Is Exam3 Finished");
                Recalculate();
                CalculateLetterGrade();
            end;

        }
    }

    keys
    {
        key(PK; "Student No.", "Lesson No.")
        {
            Clustered = true;
        }
    }

    procedure Recalculate()
    var
        Weighted: Decimal;
        Letter: Code[20];
        exambylessons: Record examsbylessons;
        notes: Record notes;

    begin
        if (Rec.exam1 < 0) or (Rec.exam1 > 100) then
            Error('Enter a value between 0 and 100.');
        if (Rec.exam2 < 0) or (Rec.exam2 > 100) then
            Error('Enter a value between 0 and 100.');
        if (Rec."final exam" < 0) or (Rec."final exam" > 100) then
            Error('Enter a value between 0 and 100.');

        Weighted :=
            (Rec.exam1 * 0.3) +
            (Rec.exam2 * 0.2) +
            (Rec."final exam" * 0.5);

        Rec."average" := Weighted;
        exambylessons.CalcFields("Is Exam1 Finished", "Is Exam2 Finished", "Is Exam3 Finished")
    end;


    procedure CalculateLetterGrade()
    var
        LetterGrade: code[20];
        HarfNotu: code[20];

    begin
        case true of
            Rec."average" >= 90:
                LetterGrade := 'AA';
            Rec."average" >= 85:
                LetterGrade := 'BA';
            Rec."average" >= 80:
                LetterGrade := 'BB';
            Rec."average" >= 75:
                LetterGrade := 'CB';
            Rec."average" >= 70:
                LetterGrade := 'CC';
            Rec."average" >= 65:
                LetterGrade := 'DC';
            Rec."average" >= 60:
                LetterGrade := 'DD';
            Rec."average" >= 50:
                LetterGrade := 'FD';
            else
                LetterGrade := 'FF';
        end;
        Rec."letter grade" := LetterGrade;
        "LetterGrade" := HarfNotu;
    end;

    /*  procedure Next()
      var
          exambylessons: Record examsbylessons;
          notes: Record notes;
      begin
          notes.CalcFields("Is Exam1 Finished", "Is Exam2 Finished", "Is Exam3 Finished")
      end;*/
}





