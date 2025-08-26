page 71131 "SchoolSetup"
{

    PageType = Card;
    SourceTable = schoolsetup;
    Caption = 'School Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    ApplicationArea = all;


    layout
    {
        area(content)
        {
            group(General)
            {
                //You might want to add fields here
                field("Teacher No-Series"; Rec."Teacher No-Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Teacher No-Series field.', Comment = '%';
                }
                field("Department No-Series"; Rec."Department No-Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Department No-Series field.', Comment = '%';
                }
                field("Lessons No-Series"; Rec."Lessons No-Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lessons No-Series field.', Comment = '%';
                }
                field("Notes No-Series"; Rec."Notes No-Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Notes No-Series field.', Comment = '%';
                }
                field("Exams No-Series"; Rec."Exams No-Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Exams No-Series field.', Comment = '%';
                }
                field("student No-Series"; Rec."student No-Series")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the student No-Series field.', Comment = '%';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

}
