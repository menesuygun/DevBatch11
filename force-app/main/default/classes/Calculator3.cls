public  class Calculator3 {
    public static integer add(List<integer> intList){ 
        Integer returnInt = 0;
        for( integer eachInt: intList){
            system.debug('eachInt => ' + eachInt);
            returnInt += eachInt;
            system.debug('returnInt => ' + returnInt);
        }
        return returnInt;
    }
}
