float x = 0.01;
float y = 0;
float z = 0;

float x2 = 0.01;
float y2 = 0;
float z2 = 0;

float a = 10;
float b = 28;
float c = 8.0/3.0;

float a2 = 10.0000000001;
float b2 = 28.0000000001;
float c2 = 8.0000000001/3.0000000001;

void setup() {
  size(1200, 600);
  background(0);
}

void draw() {
  float dt = 0.01;
  float dx = (a * (y - x)) * dt;
  float dy = (x * (b - z) - y) * dt;
  float dz = (x * y - c * z) * dt;
  
  float dt2 = 0.01;
  float dx2 = (a2 * (y2 - x2)) * dt2;
  float dy2 = (x2 * (b2 - z2) - y2) * dt2;
  float dz2 = (x2 * y2 - c2 * z2) * dt2;

  x = x + dx;
  y = y + dy;
  z = z + dz;
  
  x2 = x2 + dx2;
  y2 = y2 + dy2;
  z2 = z2 + dz2;
  
  translate(width / 2, height / 2);
  scale(5);
  stroke(255);
  point(x - 50, y);
  
  stroke(255, 255, 0);
  point(x2 + 50, y2);
}
