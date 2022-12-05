public class Calculator {
    //void --> return type
    //() --> paramenters
    public void welcomeMessage(){
        system.debug('Welcome to apex calc');
    }
    public void printNewMessage(string msg){
        system.debug(msg);
    }
    //return string, append '...OK Cool' to parametre
    public string printAndReturnMessage(string msg){
        string returnString = msg +' ...OK Cool';

        return returnString;
    }
    public integer add(integer a, integer b){
        integer sum = a+ b;
        return sum;
    }
    public integer add(integer x, integer y, integer z){
        integer sum = x +y +z;
        return sum;
    }
}
