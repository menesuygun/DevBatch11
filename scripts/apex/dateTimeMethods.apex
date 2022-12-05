DatetimeMethodsDemo p1 = new DatetimeMethodsDemo();
p1.calculateAgeInMonths();

p1.calculateAgeInDays();

p1.printSubscriptionEndDate();

p1.printOfferEndDateTime();

p1.birthDateToMilliseconds();

date date1 = date.newInstance(2020,06,18);
boolean newDateLYcheck = p1.leapYearCheck(date1);
system.debug(newDateLYcheck);