tableextension 71103 notes extends notes
{
    fields
    {
        field(2222; "average"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Average.';
            Editable = false;
        }

        field(223; "letter grade"; Code[20])
        {
            Editable = false;
            Caption = 'letter grade';
        }

    }
    local procedure CalculateNotes()
    var
        NotesAvarage: Record notes;
        exam1: Integer;
        exam2: Integer;
        finalExam: integer;
    begin
        NotesAvarage := Rec;
        if (rec.exam1 < 0) or (rec.exam1 > 100) then
            Error('0 ile 100 arasinda deger giriniz.');

        if (rec.exam2 < 0) or (rec.exam2 > 100) then
            Error('0 ile 100 arasinda deger giriniz.');

        if (rec."final exam" < 0) or (rec."final exam" > 100) then
            Error('0 ile 100 arasinda deger giriniz.');
        NotesAvarage."Average" :=
            (NotesAvarage.exam1 * 0.3) +
            (NotesAvarage.exam2 * 0.2) +
            (NotesAvarage."final exam" * 0.5);

        Modify(true);

    end;

    local procedure CalculateLetterGrade()
    var
        average: Decimal;
        LetterGrade: code[20];
    begin
        average := Rec."average";
        if average >= 90 then
            LetterGrade := 'AA'
        else if average >= 85 then
            LetterGrade := 'BA'
        else if average >= 80 then
            LetterGrade := 'BB'
        else if average >= 75 then
            LetterGrade := 'CB'
        else if average >= 70 then
            LetterGrade := 'CC'
        else if average >= 65 then
            LetterGrade := 'DC'
        else if average >= 60 then
            LetterGrade := 'DD'
        else if average >= 50 then
            LetterGrade := 'FD'
        else
            LetterGrade := 'FF';
        Rec."Letter Grade" := LetterGrade;
        Modify(true);
        Message('Your letter grade: %1 (Average: %2)', LetterGrade, average);
    end;


    local procedure Getcolor()
    var stylecolor:text[20];
    begin
        if average<40 then begin
            styleColor:='unfavorable';
            Message('Dersten kaldin.');
        end else begin
            stylecolor:='favorable';
            Message('Dersten gectin.');
            Getcolor();
        end;

        if average = 10 then
        Message('aa')
        else    
        Message('');
    end;
}
     
     
     
     


