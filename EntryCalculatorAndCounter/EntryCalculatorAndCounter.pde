import javax.swing.*;

//Entry Counter And Calculator Setup 
  int studenten = 0;
  String studentEingabe = "1";
  int totalS;
  int counterS;

  int normal = 0;
  String normalEingabe = "2";
  int totalN;
  int counterN;

  int gonner = 0;
  String gonnerEingabe = "3";
  int totalG;
  int counterG;

  String stop = "4";
  
  String eintritt; 



void setup() {
  
  //Entry Counter
  do {
    eintritt = getStringFromUser("Eintritte:");
    if (studentEingabe.equals(eintritt)) {
      counterS++;
      studenten += 5;
      totalS = studenten;
    } else if (normalEingabe.equals(eintritt)) {
      counterN++;
      normal += 10;
      totalN = normal;
    } else if (gonnerEingabe.equals(eintritt)) {
      counterG++;
      gonner += 15;
      totalG = gonner;
    }
  } while (!stop.equals(eintritt));


  //Output
  println ("****");
  println ("Auswertung");
  println ("****");
  println ("Anzahl Studenten: " + counterS);
  println ("Total Klasse Studenten: " + studenten);
  println ("Anzahl Normal: " + counterN);
  println ("Total Klasse Normal: " + totalN);
  println ("Anzahl gonner: " + counterG);
  println ("Total Klasse gönner: " + totalG);
  println ("****");

}  

String getStringFromUser(String prompt) { 
  String input = JOptionPane.showInputDialog(prompt); 
  if (input == null) input = "cancel"; 
  return input;
} 
