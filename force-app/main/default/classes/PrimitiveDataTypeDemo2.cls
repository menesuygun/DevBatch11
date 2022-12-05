public class PrimitiveDataTypeDemo2 {
    public void printDate() {
        system.debug('Create new date instance');


    //datatype //variable  //new instance of date using dateclass method
                            //newInsace(Year, Month, Day)
    Date newDate = Date.newInstance(1995, 2, 2);
    system.debug('new date is '+newDate);
    Date newDate2 = Date.newInstance(2022, 10, 10);
    system.debug('new date2 is ' +newDate2);
    Date todayDate = date.today();
    system.debug('today\'s date is ' + todayDate );
}
    public void printNewTime(){
        Time myTime = Time.newInstance(18, 20, 2, 30);
        system.debug('myTime is ' + myTime);
        Time meTime = Time.newInstance(15, 15, 2, 20);
        system.debug('meTime is ' + meTime);
    }
    public void printNewDateTime(){
        //today's date
        date newDate = date.today();
        //new time
        time newTime = time.newInstance(9, 8, 0, 0);

        //1. create new datetime from DATE and TIME
        datetime dt1 = datetime.newInstance(newDate, newTime);
        system.debug('dt1 is ' +dt1);

        //2 create datetime using YEAR, MOTNH DAY => Time will be midnight (00000.
        datetime dt2 = datetime.newInstance(2025, 1, 9);
        system.debug('dt2 is '+dt2);
        
    }

}
