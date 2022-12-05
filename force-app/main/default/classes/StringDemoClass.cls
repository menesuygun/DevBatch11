public class StringDemoClass {
    public void stringMethod1() {
        String sessionDescription = 'learning string methods in apex language.';
        system.debug(sessionDescription);

        integer lengthOfStr = sessionDescription.length();
        system.debug('length of session description is ' + lengthOfStr );

        String capital = sessionDescription.toUpperCase();
        system.debug(capital);

        boolean apexCheck = sessionDescription.contains('apex');
        system.debug('Description contains apex: ' + apexCheck);

        boolean salesforceCheck = sessionDescription.contains('salesforce');
        system.debug('Description contains salesforce: ' + salesforceCheck);
    
        boolean apexCheck1 = sessionDescription.contains('Apex');
        system.debug('Description contains Apex: ' + apexCheck1);

        boolean apexCheckAny = sessionDescription.containsIgnoreCase('Apex');
        system.debug('Description contains Apex: ' + apexCheckAny);

        //Moves the space before/after
        string username = '   vitap   ';
        username = username.trim();
        
        //checks the string if it is the same;
        boolean cheackUsername = username.equals('vitap');
        system.debug('Username check ' + cheackUsername);






    }

}
