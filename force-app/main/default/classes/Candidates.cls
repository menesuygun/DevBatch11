public class Candidates {
    public string name;
    public string gender;
    public static string companyName;
    public static integer countCandidates = 0;
    
    public Candidates(){
        countCandidates++;
    }

    public Candidates(string n, string g){
        this();
        name = n;
        gender = g;
    }

    public void printCandidate() {
        System.debug('Candidate name is ' + name);
        System.debug('Gender is '+ gender);
        System.debug('Company name is '+ companyName);
    }

    public static void printCandidateInfo() {
    System.debug('Company name is '+ companyName);
    //we CANNOT access non-static members inside static method. 
    // System.debug('Name is ' + name);
    }
}
