
void setup() {
  size(800, 600);
}

void draw() {

  if (mouseY > 300) {
    background(255);
    fill(0);
    circle(mouseX, mouseY, 50);
  } else {
    background(0);
    fill(255);
    circle(mouseX, mouseY, 50);
  }

}
