public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        //create a new acccount record using apex code(DML)
        //1. create new instance
        Account acc = new account();
        
        //2. set valus to fields
        acc.name = 'SoftInnovas';
        system.debug('Not Inserted ' + acc);

        //dml.
        insert acc; //boom
        system.debug('Inserted ' + acc);
    }

    public static void dmlInsertDemo_cstmObj(){
        //1. create new instance
        Salesforce_project__c spNew = new Salesforce_project__c();
        //2. set field values
        spNew.project_name__c = 'Tech DML to batch 11';
        spNew.description__c = 'Everybody is doing great. Keep it up.';
        spNew.status__c = 'New';
        // 3. dml
        insert spNew;
    }
    // update record right after inserting...
    public static void dmlUpdateDemo_1(){
        //insert record
        Account acc = new Account();
        acc.Name = 'SoftInnovas';
        insert acc;
        //1. set new field value 
        acc.Name = 'Salesforce Inc.';
        //2. now come update 
        update acc; 
        system.debug(acc);

    }
}
