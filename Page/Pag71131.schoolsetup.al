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
                field("Teacher No-Series"; Rec."Teacher No-Series")
                {
                    Caption = 'Teacher No-Series';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Teacher No-Series field.', Comment = '%';
                }
                field("Department No-Series"; Rec."Department No-Series")
                {
                    Caption = 'Department No-Series';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Department No-Series field.', Comment = '%';
                }
                field("Lessons No-Series"; Rec."Lessons No-Series")
                {
                    Caption = 'Lessons No-Series';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lessons No-Series field.', Comment = '%';
                }
                field("Notes No-Series"; Rec."Notes No-Series")
                {
                    Caption = 'Notes No-Series';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Notes No-Series field.', Comment = '%';
                }
                field("Exams No-Series"; Rec."Exams No-Series")
                {
                    Caption = 'Exams No-Series';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Exams No-Series field.', Comment = '%';
                }
                field("student No-Series"; Rec."student No-Series")
                {
                    Caption = 'Student No-Series';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the student No-Series field.', Comment = '%';
                }
                field("Notesbystudent No-Series"; Rec."notesbystudent No-Series")
                {
                    Caption = 'Notesbystudent No-Series';
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

}
