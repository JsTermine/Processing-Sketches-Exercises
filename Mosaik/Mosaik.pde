void setup() {
  final float WINKEL = 0.14;
  size(800, 800);
  rectMode(CENTER);
  noStroke();

  int affX = 50;
  int affY = 50;
  int sqSize = 50;
  translate(sqSize/2, sqSize/2);

  for (int x = 0; x < width; x += affX) {
    for (int y = 0; y < height; y += affY) {
      fill(random(255), random(255), random(255), 210);
      float rW = random(-WINKEL, WINKEL);
      translate(x, y);
      rotate(rW);
      square(0, 0, sqSize);
      rotate(-rW);
      translate(-x, -y);
    }
  }
}
