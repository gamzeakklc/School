page 71128 notes
{
    ApplicationArea = All;
    Caption = 'notes';
    PageType = List;
    SourceTable = notes;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(exam1; Rec.exam1)
                {
                }
                field(exam2; Rec.exam2)
                {
                }
                field("final exam"; Rec."final exam")
                {
                }
            }
        }
    }
}
