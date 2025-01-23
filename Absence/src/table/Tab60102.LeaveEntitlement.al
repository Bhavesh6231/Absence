table 60102 "Leave Entitlement"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Entry No.";Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2;Year; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; Employee; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Employee;
            trigger OnValidate()
            begin
                Rec.CalcFields("Employee Name");
            end;
        }
        field(4;"Employee Name";Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Employee."First Name" where("No." = field(Employee)));
        }
        field(5; "Leave Type"; Code[20])
        {
            TableRelation = "Leave Type";
            DataClassification = ToBeClassified;
        }
        field(6; Quota; Blob)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Carried Forward"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin
        if "Entry No." = GetLastEntryNo() then begin
            "Entry No.":= Rec."Entry No."+1;
        end;
    end;
    procedure GetLastEntryNo():Integer
    var 
        LeaveQuotaRec: Record "Leave Entitlement";
    begin
        if LeaveQuotaRec.FindLast() then begin
            exit(LeaveQuotaRec."Entry No.")
        end;
        exit(1);
    end;
}