//created a class.
public class Car {

    public string carColor = '';
    public string carName;


     integer maxSpeed = 150;
    //created a mehtod
    public void switchOn(){
        datetime switchONTime = datetime.now();
        system.debug('starting the car');
    }
    public void drive(){
        system.debug('Driving ' + carName + ' of color ' + carColor);
    }
    public void driveAtMaxSpeed() {
        string drivingDescription ='Driving ' + carName + ' at '+ maxSpeed + ' km/hr.';
        system.debug(drivingDescription);
    }
}
//SAVE CLASS.
// right click. > sfdx deploy.

//class, we deploy.
//anonymous apex, we execute.
