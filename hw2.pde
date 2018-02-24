Car car;
int location = 0;

void setup(){
  size(600, 200);
  car = new Car(255, 215, 0);
}

void draw(){
  background(50, 205, 50);
  fill(206, 154, 64);
  rect(0, height/2 + 20, width, 40);
  car.draw();
}

void keyPressed() {
  if(keyCode == RIGHT){
    car.goRight();
  }else if(keyCode == LEFT){
    car.goLeft();
  }
}

public class Car{
  private int r,g,b;
  private int angle;
  
  public Car(int r, int g, int b){
    this.r = r;
    this.g = g;
    this.b = b;
    angle = 0;
  }
  
  public void goRight(){
    location += 5;
    angle += 5;
  }
  
  public void goLeft(){
    location -= 5;
    angle -= 5;
  }
  
  public void draw(){
    pushMatrix();
    translate(location, height/2 - 20);
    fill(r, g, b);
    noStroke();
    rect(20, 0, 80, 30, 10);
    rect(0, 25, 120, 30, 10);
    fill(0, 255, 255);
    rect(40, 10, 40, 15, 3);
    fill(0);
    ellipse(25, 55, 30, 30);
    ellipse(95, 55, 30, 30);
    fill(128);
    
    pushMatrix();
    translate(25, 55);
    rotate(radians(angle % 360));
    rect(-8, -8, 16, 16);
    popMatrix();
    
    pushMatrix();
    translate(95, 55);
    rotate(radians(angle % 360));
    rect(-8, -8,16,16);
    popMatrix();
    
    popMatrix();
  }
}