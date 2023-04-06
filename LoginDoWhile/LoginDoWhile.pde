import javax.swing.*;

//Login Setup
final String SECRET_PW = "avs";
String userInput; 
int counter;


void setup() {

  // Login with 3 Tries
  do {
    counter++;
    userInput = getStringFromUser("Passwort:");
    
    
    if (userInput.equals(SECRET_PW)) {
      println("Welcome Neo... You are in!");
      break;
    } else if (counter > 2) {
      println("Too many tries, Please go away!");
      break;
    } 
      
  } while (!SECRET_PW.equals(userInput));

}




String getStringFromUser(String prompt) { 
  String input = JOptionPane.showInputDialog(prompt); 
  if (input == null) input = "cancel"; 
  return input;
} 
