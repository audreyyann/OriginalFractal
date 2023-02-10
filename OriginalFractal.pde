public void setup(){
  size(500, 500);
  ellipseMode(CENTER);
  rectMode(CENTER);
}

public void draw(){
  fill(191, 69, 44, 50);
  stroke(64, 16, 6);
  background(193, 217, 247);
  myFractal(250, 250, 250);
}

public void myFractal(int x, int y, int siz){
    if(siz > 10){
      myFractal(x, y-siz/2, siz/2);
      myFractal(x+siz/3, y-siz/3, siz/2);
      myFractal(x+siz/2, y, siz/2);
      myFractal(x+siz/3, y+siz/3, siz/2);
      myFractal(x, y+siz/2, siz/2);
      myFractal(x-siz/3, y+siz/3, siz/2);
      myFractal(x-siz/2, y, siz/2);
      myFractal(x-siz/3, y-siz/3, siz/2);
  }
   ellipse(x, y, siz, siz);
   rect(x, y, siz/1.5, siz/1.5);
}
