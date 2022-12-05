Calculator c1 = new Calculator();
c1.welcomeMessage();

string message = 'Print this message';
c1.printNewMessage(message);

c1.printNewMessage('Print this one now.');

Calculator c2 = new Calculator();
string returnc2= c2.printAndReturnMessage('Print this asap');
system.debug(returnc2);

integer c2Sum1 = c2.add(10, 15);
system.debug('c2Sum1 is ' + c2Sum1);

integer c2Sum2 = c2.add(45, 55);
system.debug('c2Sum2 is '+c2Sum2);
integer x = 88;
integer y = 99;
integer c2Sum3 = c2.add(x,y);
system.debug('c2Sum3 is ' +c2Sum3);
integer c2sum33 = c2.add(10, 15, 25);
system.debug(c2sum33);