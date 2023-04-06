int posX = 400;
int speedX = 8;
int posY = 300;
int speedY = 8;
int diameter = 50;

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  circle(posX, posY, diameter);
  posX += speedX;
  posY += speedY;

  if (posX > width) {
    speedX = -speedX;
  } else if (posX < 0) {
    speedX = -speedX;
    speedX++;
  }

  if (posY > height) {
    speedY = -speedY;
    speedY--;
  } else if (posY < 0) {
    speedY = -speedY;
  }
}
