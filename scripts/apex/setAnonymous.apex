SetDemo.cityset();

SetDemo.randomIntegerSet();

List<integer> listInteger = new List<integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
listInteger.add(12);
listInteger.add(18);

 Set<Integer> setInt = SetDemo.setFromList(listInteger);
 system.debug('set is' + setInt );