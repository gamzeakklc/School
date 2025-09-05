page 71122 semester
{
    ApplicationArea = All;
    Caption = 'semester';
    PageType = List;
    SourceTable = semester;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("lesson no"; Rec."lesson no")
                {
                    Caption = 'lesson no';
                }

                field(whichsemester; rec.whichsemester)
                {
                    ToolTip = 'Specifies the value of the whichsemester. field.', Comment = '%';
                }
                field(year; rec.year)
                {
                    ToolTip = 'Specifies the value of the lessons. field.', Comment = '%';
                }
                field(lessonsname; Rec.lessonsname)
                {
                    ToolTip = 'Specifies the value of the lessons field.', Comment = '%';
                }

            }

        }
    }

}
