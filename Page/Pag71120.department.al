page 71120 departmans
{
    ApplicationArea = All;
    Caption = 'department';
    PageType = List;
    SourceTable = department;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(departmentID; Rec.departmentdID)
                {
                    Caption = 'departmanID';
                    ToolTip = 'Specifies the value of the departmentdID field.', Comment = '%';
                }
                field(departmentName; Rec.departmentName)
                {
                    Caption = 'departmentname';
                }
                field(LessonsName; Rec.LessonsName)
                {
                    Caption = 'departmanLessons';
                }
            }
        }
    }
}

