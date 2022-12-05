RankHandler rk = new RankHandler();
string p1 = rk.rankPrize(1);
system.debug('p1 is '+p1);

string p2 = rk.rankPrize(2);
system.debug('p2 is '+ p2);

string p5 = rk.rankPrize(5);
system.debug('p5 is '+p5);

string p15 = rk.rankPrize(15);
system.debug('p15 is '+p15);

string pp1 = rk.rankPrizeSwitch(1);
system.debug('pp1 is '+pp1);

string pp2 = rk.rankPrizeSwitch(2);
system.debug('pp2 is '+ pp2);

string pp5 = rk.rankPrizeSwitch(5);
system.debug('pp5 is '+pp5);

string pp15 = rk.rankPrizeSwitch(15);
system.debug('pp15 is '+pp15);