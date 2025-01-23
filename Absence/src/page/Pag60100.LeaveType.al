page 60100 "Leave Type"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Leave Type";
    
    layout
    {
        area(Content)
        {
            repeater(Control)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field("Number of Days";Rec."Number of Days")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}