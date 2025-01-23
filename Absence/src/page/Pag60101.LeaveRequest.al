page 60101 "Leave Request"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Leave Request";
    
    layout
    {
        area(Content)
        {
            repeater(Control)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field(Employee;Rec.Employee)
                {
                    ApplicationArea = All;
                    ToolTip = 'Select the Employee';
                }
                field("Employee Name";Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Request Date";Rec."Request Date")
                {
                    ApplicationArea = All;
                }
                field("Request Time";Rec."Request Time")
                {
                    ApplicationArea = All;
                }
                field("Leave Type";Rec."Leave Type")
                {
                    ApplicationArea = All;
                }
                field("Start Date";Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field("No. of Days";Rec."No. of Days")
                {
                    ApplicationArea = All;
                }
                field(Comments;Rec.Comments)
                {
                    ApplicationArea = All;
                }
                field("Stand-in";Rec."Stand-in")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}