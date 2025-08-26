page 71130 notesbystudent
{
    ApplicationArea = All;
    Caption = 'notesbystudent';
    PageType = List;
    SourceTable = notesbystudent;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(notesbystudent; Rec.notesbystudent)
                {
                }
            }
        }
    }
}
