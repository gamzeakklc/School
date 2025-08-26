table 71124 exams
{
    Caption = 'exams';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "exam1"; Decimal)
        {
            Caption = 'firstexam';
        }
        field(2; exam2; Decimal)
        {
            Caption = 'secondexam';
        }
        field(3; FianlExam; Decimal)
        {
            DataClassification = ToBeClassified;
        }

    }
    keys
    {
        key(PK; "exam1")
        {
            Clustered = true;
        }
    }
}
