table 71119 semester
{
    Caption = 'semester';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "lesson no"; code[100])
        {
            Caption = 'lesson no';
            TableRelation = lessons.LessonsId;

        }

        field(3; whichsemester; Enum "semester")
        {
            Caption = 'whichsemester';

        }

        field(5; lessonsname; code[100])
        {
            FieldClass = flowfield;
            CalcFormula = lookup(Lessons.LessonsName where(LessonsID = field("lesson no")));
            Caption = 'lessons';
            Editable = false;
        }
        field(6; "year"; code[100])
        {
            Caption = 'year';
        }
    }
    keys
    {
        key(PK; "lesson no", year, whichsemester)
        {
            Clustered = true;
        }
    }



}
