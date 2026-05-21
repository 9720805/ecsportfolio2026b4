//Logan Dillworth | Feb 26 2026 | Timeline
void setup() {
  size(950,400);
}
void draw() {
  background(#626FAD);
  drawRef();
  histEvent(250,200,"August 14, 1991", true," August 14 1991 - Henrik Harlaut was born in Sweden. ");
  histEvent(450,300,"May 9, 2008", false," May 9 2008 — Henrik Harlaut began skiing in competitions for freestyle and became popular.");
  histEvent(525,200,"January 27,2011", true," January 27 2011 - Henrik Harlaut skied in the X games for slopestyle for the first time.");
  histEvent(590,300,"January 26, 2013", false," January 26 2013 - Henrik Harlaut won a silver medal for slopestyle X games.");
  histEvent(630,200,"Febuary 13, 2014", true," Febuary 13 2014 - Henrik Harlaut represented Sweden for the Winter Olympics.");
  histEvent(700,300,"Febuary 28, 2018", false," Febuary 28 2018 - Henrik Harlaut also represented Sweden for the winter olympics.");
  histEvent(750,200,"February 9, 2022 ", true,"Febuary 9 2022 — 2022 Henrik Harlaut yet again represented Sweden in the winter olympics.");
  histEvent(850,300,"August 23,2024", false," August 23 2024 - Henrik Harlaut got injured during a training, after taking a gap year he is slowly easing back into competitive skiing. " );
}
void drawRef() {
  textAlign(CENTER);
  textSize(38);
  fill(255);
  text(" Henrick Harlaut Timeline", width/2,70);
  textSize(15);
  text("By Logan Dillworth", width/2,90);
  strokeWeight(3);
  line(50,250,900,250);
  strokeWeight(1);
  line(50,255,50,245);
  line(900,255,900,245);
  line(475,255,475,245);
  line(262.5,255,262.5,245);
  line(687.5,255,687.5,245);
  textSize(12);
  text("1985",50,240);
  text("2030",900,240);
  text("2010",475,240);
  text("2000",262.5,270);
  text("2020",687.5,270);
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top == true) {
    line(x,y,x-30,y+50);
  } else {
    line(x,y,x-30,y-50);
  }
  rectMode(CENTER);
  fill(50);
  rect(x,y,100,30,7);
  fill(255);
  text(title,x,y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    text(detail, width/2, 350);
  }
}
