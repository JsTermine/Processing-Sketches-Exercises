void setup() {
  size(800, 300);
  
  int posX = 200;
  int circleDiameter = 100;
  int countCircle = 5;
  
  for (int i = 0; i < countCircle; i++) {
    circle(posX, 150, circleDiameter);
    posX += 100;
  }  

}
