void setup() {
  size(500, 500);
}

void draw() {
  background(180);
  fill(100);
  stroke(100);
  quad(0, 500, mouseX, 500, mouseX, mouseY, 0, mouseY);
  texts();
  visuals();
  textSize(15);
}

void texts() {
  int h = 500-mouseY;
  int w = mouseX;
  fill(0);
  textSize(25);
  text("Area Converter", 160, 25);
  textSize(15);
  text("Height: " + h, 170, 40);
  text("Width:  " + w, 170, 55);
  text("Area:    " + h * w, 170, 70);
  text("yards squared", 290, 70);
  text("*Not to scale", 170, 85);
  for (int s = 40; s < 60; s += 15) {
    text("yards", 290, s);
  }
}

void visuals() {
  stroke(0);
  line(0, 499, 500, 499);
  line(0, 0, 0, 500);
  for (int y = 0; y < 500; y += 10) {
    line(0, y, 5, y);
    line(y, 500, y, 493);
  }
  for (int y = 0; y < 1001; y += 10) {
  }
  for (int y = 100; y < 500; y += 100) {
    stroke(255);
    fill(255);
    line(0, y, 5, y);
    line(y, 500, y, 493);
    textSize(10);
    text(y + " yds", y-20, 490);
    text(500-y + " yds", 10, y+3);
  }
}