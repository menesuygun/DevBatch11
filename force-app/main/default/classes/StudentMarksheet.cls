public class StudentMarksheet {
    public void showMarksheetUsingDatatype() {
        string firstName = 'Enes';
        string lastName ='Uygun';
        integer mathematics = 70;
        integer english = 95;
        integer chemistry = 65;

        system.debug('Student name: '+ firstName + ' ' + lastName);
        system.debug('Mathematics: '+ mathematics );
        system.debug('English: '+ english);
        system.debug('Chemistry: '+ chemistry );
    }
  public void showMarksheetUsingObject(){
    Object obj1 = 'Enes';
    Object obj2 = 'Uygun';
    Object math = 70;
    Object english = 95;
    Object chemistry = 65;

    system.debug(obj1+' '+obj2);
    system.debug(math);
    system.debug(english);
    system.debug(chemistry);

  }


}
