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
    //update existing record
    public static void dmlUpdateDemo_3(){
        //fetch record using soql.
        //1. soql returns account bcz limit 1.
        account acc = [select name from account where name = 'SoftInnovas Inc.' limit 1];
        //2. update account
        acc.Name = 'SoftInnovas';
        //3.DML
        update acc;
        system.debug('acc = ' + acc);
    }
    //Retrieve using SOQL then update record
    public static void dmlInsertDemo_4(){
        //1. soql to get ONE account
        Account acc = [Select id, name from account where name = 'SoftInnovas Inc.' limit 1];

        //create contact
        contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.AccountId= acc.id;
        insert cnt;
        system.debug('contact record '+ cnt);


    }

    public static void dmlInsertDemo_5(){
        Salesforce_Project__c sp = [select id, name from Salesforce_Project__c order by CreatedDate desc limit 1];

        //we want to create related ticket
        Salesforce_Ticket__c stNew = new Salesforce_Ticket__c();
        stNew.Subject__c = 'Learn Apex dmls';
        stNew.Priority__c = 'High';
        stNew.Status__c = 'New';
        stNew.Requested_by_date__c = date.newInstance(2022, 12, 5);
        stNew.Salesforce_Project__c = sp.id;
        insert stNew;
        system.debug('st is ' +stNew);
    }
    public static void dmlInsertMultiple_right(){
        List<account> listAcc = new list<account>();

        account acc1 = new account();
        acc1.Name =' bulk acc1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.Name =' bulk acc2';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.Name =' bulk acc3';
        listAcc.add(acc3);

        insert listAcc;
    }
    public static void dmlInsertMultiple_right2(){
        List<account> listAcc = new List<account>();
        
        for (Integer i = 0; i<155; i++){
            account acc = new account();
            acc.name = 'SoftInnovas v' + i;
            acc.Active__c = 'Yes';
            listAcc.add(acc);
        }
        //check if list is NOT empty
        if(!listAcc.isEmpty()){
            insert listAcc; // execute his ONLY if LIST is NOT EMPTY.
        }
    }
    public static void dmlUpdateMultiple_right1(){
        list<account> listAcc = [select id, name, active__c from account];
        list<account> updateAccount = new list<account>();

        for(account acc: listAcc){
            if(acc.Active__c == 'Yes'){
                acc.Name = acc.Name + 'via B.0';
                updateAccount.add(acc);
            }
        }
        if(!updateAccount.isEmpty()){
            update updateAccount;
        }
    }
}
