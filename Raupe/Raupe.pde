

void setup() {
  size(800, 600);
  background(255);
}

void draw() {



  //one-left
  fill(0, 153, 0);
  stroke(0);
  ellipse(260, 245, 70, 70);

  //left black
  noFill();
  ellipse(230, 230, 25, 25);

  //right black
  noFill();
  ellipse(250, 230, 25, 25);

  //right Eyewhite
  fill(255);
  stroke(255);
  circle(250, 230, 23); 

  //left Eyewhite
  fill(255);
  stroke(255);
  circle(230, 230, 23); 
  
  //left Eyedot
  fill(0);
  stroke(0);
  circle(235, 230, 10);
  
  //right Eyedot
  fill(0);
  stroke(0);
  circle(245, 230, 10);

  //two-left
  fill(0, 153, 0);
  stroke(0);
  ellipse(300, 290, 70, 70);

  //three-left
  fill(0, 153, 0);
  ellipse(350, 300, 70, 70);

  //four-left
  fill(0, 153, 0);
  ellipse(400, 290, 70, 70);


  //five-left
  fill(0, 153, 0);
  ellipse(450, 300, 70, 70);

  //sixth-left
  fill(0, 153, 0);
  ellipse(500, 290, 70, 70);
}
