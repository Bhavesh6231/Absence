table 60101 "Leave Request"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Entry No.";Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; Employee; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Employee;
            trigger OnValidate()
            var
                EmployeeRec: Record Employee;
            begin
                if EmployeeRec.Get(Employee) then begin
                    "Employee Name" := EmployeeRec.FullName();
                end
                else
                    "Employee Name" := '';

            end;
        }
        field(3;"Employee Name";Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4;"Request Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Request Time"; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Leave Type"; Code[20])
        {
            TableRelation = "Leave Type";
            DataClassification = ToBeClassified;
        }
        field(7; "Start Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "No. of Days"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(9; Comments; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Stand-in"; Code[20])                
        {
            DataClassification = ToBeClassified;
            TableRelation = Employee;
        }
    }
    
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        if "Request Date" = 0D then begin
            "Request Date" := Today;
        end;
        if "Request Time" = 0T then begin
            "Request Time" := Time;
        end;
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}