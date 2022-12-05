public class PrimitiveDataTypeDemo {
        //METHOD
        public void printBasicDataType(){
            system.debug('print data types');
            string batchName = 'Batch 11';
            integer totalCandidates = 80;
            boolean isAdminCompleted = true;

            system.debug('batch name is '+batchName);
            system.debug('total candidates are '+ totalCandidates);
            system.debug('is admin completed? '+ isAdminCompleted);

            string batchDescription = batchName + ' is the best';
            system.debug(batchDescription);

            Decimal decValue = 33.9;
            system.debug('decimal value is ' + decValue);

            Long l = 2148941241L;
            system.debug('long value is ' + l);
        }
        public void printBasicDataType2(){
            Object obj1 = 'assigning string to object. Allowed?';
            Object obj2 = 5000;
            object obj3 = false;

            system.debug(obj1);
            system.debug(obj2);
            system.debug(obj3);

            ID accountId= '001Do000003CNxPIAW';
            system.debug('id -> ' + accountId);
        }
}
