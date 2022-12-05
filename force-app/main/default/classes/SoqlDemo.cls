public class SoqlDemo {
    public static void accountSOQL_1(){
        List<Account> listAccount = [select id, name from account where name like '%a%'];
        system.debug('account list = ' + listAccount);

    }
    public static void accountSOQL_11(){
        Account acc = [select id, name, phone, AccountNumber from account order by CreatedDate desc limit 1];
        system.debug('latest created account is -> ' + acc);
    }

    public static void accountSOQL_2(){
        Account acc = [select id, name, phone, AccountNumber from account order by CreatedDate desc limit 1];
        system.debug('latest created account is -> ' + acc);

        String accName = acc.name;
        String accPhone  = acc.phone;
        system.debug('accName name is ' + accName + ', phone is ' + accPhone + ' account number is ' + acc.AccountNumber);

    }
    public static void accountSOQL_3(){
        List<account> listAcc = [select id, name , phone, accountnumber from account order by createddate desc];

        for(Account eachAcc: listAcc){
            string accName = eachAcc.Name;
            string accphone = eachAcc.Phone;
            system.debug('acc name is ' + accName + ', acc phone number is ' + accphone + ', account number is ' + eachAcc.AccountNumber);
        }
    }

    
}
