public class PrimitiveDataTypeDemo3 {
    public void printNewDateTime() {
        //3. create datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND.
        datetime dt3 = Datetime.newInstance(2022, 45, 15, 9, 5, 40);
        system.debug('dt3 is ' + dt3);

        //4. create dateime using 
        Datetime dt4_1 = Datetime.newInstance(0);
        system.debug(dt4_1);

        Long longTime = 1251728242652L; //miliseconds forrm 1970 Jan 1st 00:00:00.
        datetime dt4 = datetime.newInstance(longTime);
        system.debug('dt4 is '+  dt4);

        datetime dt6 = datetime.now();
        system.debug('dt 6 current datetime is ' + dt6);

        datetime dt5  = datetime.newInstanceGmt(1998, 8, 4, 5,1,4);
        system.debug('dt5 is '+ dt5);



    }

}
