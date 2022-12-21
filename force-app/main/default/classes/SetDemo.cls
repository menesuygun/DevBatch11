public  class SetDemo {
    public static void citySet(){
        Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Toronto');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('TOKYO');

        System.debug('cities are ' + cities);
    }
    public static void randomIntegerSet(){
        Set<Integer> setInt = new Set<Integer>();
        setInt.add(15);
        setInt.add(10);
        setInt.add(21);
        setInt.add(15);
        setInt.add(15);

        system.debug('Integer set: ' +setInt);
    }
    public static Set<Integer> setFromList(List<Integer> intList){
         Set<Integer> intSet = new Set<Integer>();
         intSet.addAll(intList);
         return intSet;
    }
}
