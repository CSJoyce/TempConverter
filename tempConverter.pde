void setup() {
  size(200, 200);
}

void draw() {
  background(127);
  drawRef();
  text("Celsius: " + mouseX, 10, 10);
  text("Fahrenheit: " + fConverter(mouseX), 10, 20);
  rect(0, 30, mouseX, 10);
  //println(cConverter(25.5));
  //println(fConverter(25.5)); 
  //noLoop();
}

void drawRef() {
  line(0, 45, width, 45);
  for (int i = 0; i<width; i+=20) {
    textSize(9);
    text(i, i-5, 65);
    line(i,45,i,50);
  }
}

float cConverter(float val) {
  val = (val-32)*(5.0/9.0);
  return val;
}

float fConverter(float val) {
  val = val*1.8 + 32;
  return val;
}