page 71129 notescard
{
    ApplicationArea = All;
    Caption = 'notescard';
    PageType = Card;
    SourceTable = notes;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(exam1; Rec.exam1)
                {
                }
                field(exam2; Rec.exam2)
                {
                }
                field("final exam"; Rec."final exam")
                {
                }
                field(examID; Rec.examID)
                {
                }
            }
        }
    }
}
