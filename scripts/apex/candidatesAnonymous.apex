Candidates.companyName = 'SoftInnovas';
Candidates.printCandidateInfo();
System.debug('START count of candidates = '+  Candidates.countCandidates);


Candidates c1 = new Candidates();
c1.name = 'Enes';
c1.gender = 'Male';
c1.printCandidate();

Candidates c2 = new Candidates();
c2.name = 'Darryl';
c2.gender = 'Male';
c2.printCandidate();

Candidates.companyName = 'Vendelay Industries';
Candidates c3 = new Candidates();
c3.name = 'Elaine';
c3.gender = 'Female';
c3.printCandidate();

System.debug('------');
c1.printCandidate();
System.debug('------');
c2.printCandidate();
Candidates.printCandidateInfo();
System.debug('START count of candidates = ' + Candidates.countCandidates);
