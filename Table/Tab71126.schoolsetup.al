table 71126 schoolsetup
{
    Caption = 'schoolsetup';
    DataClassification = ToBeClassified;
   
    
        fields
        {
            field(1; "Primary Key"; Code[10])
            {
              Caption='setup tablonda her zaman PK alani olmak zorunda.';
            }
    
            //You might want to add fields here
    field(3; "Teacher No-Series"; Code[20])
    {
        DataClassification = ToBeClassified;
        TableRelation="No. Series";
    }
    field(4; "Department No-Series"; Code[20])
    {
        DataClassification = ToBeClassified;
                TableRelation="No. Series";

    }
    field(5; "Lessons No-Series"; Code[20])
    {
        DataClassification = ToBeClassified;
                TableRelation="No. Series";

    }
    field(6; "Notes No-Series"; Code[20])
    {
        DataClassification = ToBeClassified;
                TableRelation="No. Series";

    }
    field(7; "Exams No-Series"; Code[20])
    {
        DataClassification = ToBeClassified;
                TableRelation="No. Series";

    }
    field(8; "student No-Series"; Code[20])
    {
        DataClassification = ToBeClassified;
    }

        }
    
        keys
        {
            key(PK; "Primary Key")
            {
                Clustered = true;
            }
        }
    
        var
            RecordHasBeenRead: Boolean;
    
        procedure GetRecordOnce()
        begin
            if RecordHasBeenRead then
                exit;
            Get();
            RecordHasBeenRead := true;
        end;
    
        procedure InsertIfNotExists()
        begin
            Reset();
            if not Get() then begin
                Init();
                Insert(true);
            end;
        end;
    
    
    }
  
    
