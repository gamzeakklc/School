table 71125 notes
{
    Caption = 'notes';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "exam1"; Integer)
        {
            Caption = 'exam1 result.';
        }
        field(2; "exam2"; integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'exam2 result.';
        }
        field(3; "final exam"; Integer)
        {
            Caption = 'final exam result';
        }
        field(4; "examID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }


    }
    keys
    {
        key(PK; "examID")
        {
            Clustered = true;
        }
    }
}
