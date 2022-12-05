//create object of car class.
//we also call it INSTANCE of class.

//Classs Name   // object name  // new instance()
//apex is case insensitive. so we car write car Car CAR cAr doesn't matter.
Car                     tesla   =    new car(); 
//new instance created, and stored in a variable named 'tesla'.
tesla.carColor = 'Black';
tesla.carName = 'model S';
tesla.switchOn();
system.debug('tesla car color -> ' + tesla.carColor);
system.debug('Tesla -> ' + tesla);
tesla.drive();
tesla.driveAtMaxSpeed();


car bmw = new car();
bmw.carName = 'xyz';
bmw.carColor = 'white';
bmw.switchOn();
system.debug('bmw car color -> ' + bmw.carColor);
system.debug('bmw -> ' + bmw);
bmw.drive();
bmw.driveAtMaxSpeed();



