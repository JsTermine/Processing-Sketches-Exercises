import javax.swing.*;


void setup() {
  int zahl1 = getNumberFromUser("Gib eine Zahl ein:");
  int zahl2 = getNumberFromUser("Gib eine zweite Zahl ein:");
  
  if (zahl1 == zahl2) {
    println("Die Zahlen sind gleich gross");
  } else if (zahl1 > zahl2) {
    println("Die erste Zahl ist grösser");
  } else {
    println("Die zweite Zahl ist grösser");
  }
  
}




int getNumberFromUser(String prompt) {
  String input = JOptionPane.showInputDialog(prompt);
  int value = Integer.parseInt(input);
  return value;
}
