 //<>//
int posX = 175, posX2 = 100, posX3 = 100;
int stepX = 50, stepX2 = 25;
int black = 1;
int r = 255, g = 255, b = 255;


void setup() {
  size(800, 600);

  // 5 Circles
  for (int i = 0; i < 10; i++) {
    circle(posX, 230, 50);
    posX += stepX;
  }


  // 25 Circles with Black to White linear gradient
  for (int i = 0; i < 25; i++) {
    black  += 10;
    fill(black);
    circle(posX2, 330, 10);
    posX2 += stepX2;
  }


  // 25 Circles with random generated RGB colors
  for (int i = 0; i < 25; i++) {
    fill(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
    circle(posX3, 430, 10);
    posX3 += stepX2;
  }


}


void draw() {
}
