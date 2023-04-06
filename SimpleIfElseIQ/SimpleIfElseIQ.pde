import javax.swing.*;
//int iq = int(random(200));
int iq = getNumberFromUser("Gib dein IQ ein:");

void setup() {
  if (iq >= 40 && iq <= 89) {
    println("Dein IQ ist Unterdurchschnittlich: " + iq);
  } else if (iq >= 90 && iq <=109) {
    println("Dein IQ ist Durchschnittlich: " + iq);
  } else if (iq >= 100 && iq <= 119) {
    println("Dein IQ ist Hoch: " + iq);
  } else if (iq >= 120 && iq <= 129) {
    println("Dein IQ ist sehr hoch: " + iq);
  } else if (iq >= 130 && iq <= 159) {
    println("Du bist Hochbegabt: " + iq);
  } else {
    println("Dieser Wert hat keine Aussagekraft: " + iq);
  }
}

int getNumberFromUser(String prompt) {
  String input = JOptionPane.showInputDialog(prompt);
  int value = Integer.parseInt(input);
  return value;}
