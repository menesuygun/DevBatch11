public class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
        date dtToday = date.today();

        date eBirthday = date.newInstance(1995,7,1);
        integer ageInMonths = eBirthday.monthsBetween(DTTODAY);
        system.debug('Age in months: ' + ageInMonths);   
    }
    public void calculateAgeInDays(){
        date dtToday = date.today();
        date eBirthday = date.newInstance(1995,7,1);
        integer ageinDays = eBirthday.daysBetween(DTTODAY);
        system.debug('Age in days: ' + ageInDays);   
    }
    public void printSubscriptionEndDate(){
        date subscriptionDate = date.today();
        date subscriptionEndDate = subscriptionDate.addDays(1000);
        system.debug('Subscription end date is ' + subscriptionEndDate);

        integer endDateYear = subscriptionEndDate.year();
        system.debug('subscription end date year: ' +endDateYear);

        integer endDateMonth = subscriptionEndDate.month();
        system.debug('subscription end date month: ' + endDateMonth);
    }
    public void printOfferEndDateTime(){
        datetime dtNow = datetime.now();

        datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('offer will end on ' + dtOfferEnd);
    }
    public void birthDateToMilliseconds(){
        datetime birthDate = datetime.newInstance(1995, 7,1,9,0,0);
        long longBirthDate = birthDate.getTime();
        system.debug('long bith date is ' + longBirthDate);
    }
    public boolean leapYearCheck(date dt){
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;
    }
}
