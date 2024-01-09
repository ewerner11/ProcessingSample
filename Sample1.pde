float angle = 0;
float angleIncrement = 0.03;
float amplitude = 50;
float wavelength = 100;
float waveSpeed = 1;
int pointSpacing = 1; // Decreased interval between points

void setup() {
  size(800, 400);
  frameRate(30);
}

void draw() {
  background(255);
  
  // Translate the origin to the middle of the screen
  translate(0, height / 2);
  
  // Begin drawing the sine wave
  beginShape();
  for (int x = 0; x < width; x += pointSpacing) { // Adjusted point interval
    float y = sin(angle) * amplitude;
    vertex(x, y);
    angle += angleIncrement;
  }
  endShape();
  
  // Increment the angle to move the wave horizontally
  angle += waveSpeed;
  
  // Increase the amplitude and wavelength to make the wave grow
  amplitude += 0.05;
  wavelength += 0.1;
}
