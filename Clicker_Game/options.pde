void options(){
thickness = map(sliderX, 100, 700, 70, 200);
  background(255);
  //slider
  fill(0);
  line(100, 300, 700, 300);
  circle(sliderX, 300, 50);
  fill(purple);
  ellipse(300, 100, thickness, thickness);
  fill(blue);
  ellipse(500, 100, thickness, thickness);
  fill(yellow);
  ellipse(700, 100, thickness, thickness);
}








void optionsClicks(){
}
