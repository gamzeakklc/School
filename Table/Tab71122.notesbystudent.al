table 71122 notesbystudent
{
    Caption = 'notesbystudent';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "notesbystudent"; Decimal)
        {
            Caption = '';
            TableRelation = notes;
            trigger OnValidate()
            var
                notesAverage: Integer;
            begin
                Message('Please enter a value between 0-100 .');
            end;
        }
        field(2; "ID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "ID")
        {
            Clustered = true;
        }

    }
    fieldgroups
    {
        fieldgroup(DropDown; notesbystudent)
        {

        }
    }
}
