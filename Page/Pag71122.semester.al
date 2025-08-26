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
                field(springsemester; Rec.springsemester)
                {
                    Caption = 'springsemester';
                }
                field(autumnsemester; Rec.autumnsemester)
                {
                    Caption = 'autumnsemester';

                }
                field(Date2DMY; Rec.Date2DMY)
                {
                    Caption = 'DayMonthYear';
                }
            }

        }
    }

}
