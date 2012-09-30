/**
 * shows how to use Ani in your own classes and 
 * how to trigger/bang an animation (via keyboard).
 *
 * KEYS
 * space           : bang the circle
 */

import de.looksgood.ani.*;

//Flower rose;

int numRoses = 1000;
Flower[] roses = new Flower[numRoses];

float x;
float y;

PFont myFont;    

void setup() {
  size(512, 512);
  smooth();
  noStroke();
  textAlign(CENTER);

  String[] fontList = PFont.list();
  println(fontList);


  //frameRate(100);

  // Ani.init() must be called always first!
  Ani.init(this);
  //rose = new Flower();

  for (int i = 0; i < roses.length; i++) {
    x = random(width/3, width/3 *2);
    y = random(height/3, height/3 *2);
    roses[i] = new Flower(x, y);
  }
}

void draw() {
  background(255); 
  for (int i = 0; i < roses.length; i++) {
    roses[i].draw();
    myFont = createFont("CenturyGothic", 24, true);
  textFont(myFont);
  text("space bar for flower bomb!", width/2, 100);
  }
}

void keyReleased() {
  if (key == ' ') 
    for (int i = 0; i < roses.length; i++) {
      roses[i].bang();
    }
} 

