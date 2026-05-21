// Logan Dillworth | 26 Mar | Timer
import processing.sound.*;
SoundFile alarm;
Button btnStart, btnStop, btnReset;

int totalTime = 10;
int startTime = 0;
int timeLeft = 0; 
boolean running = false;
boolean alarmPlayed = false;

void setup() {
  size(500, 500);
  alarm = new SoundFile(this, "alarm.mp3");
  btnStart = new Button(80, 40, 100, 30, "Start", color(#C91212), color(#1219C9));
  btnStop = new Button(420, 40, 100, 30, "Stop", color(#9551B7), color(#6AB751));
  btnReset = new Button(250, 60, 100, 30, "Reset", color(#21FAC5), color(#CB9733));
  timeLeft = totalTime;
}

void draw() {
  background(127);

  if (running == true) {
    int elapsed = (millis() - startTime)/1000;
    timeLeft = totalTime - elapsed;

    if (timeLeft <= 0) {
      timeLeft = 0;
      running = false;
      //play sound Only once
      if (!alarmPlayed) {
        alarm.play();
        alarmPlayed = true;
      }
    }
  }

  btnStart.display();
  btnStart.hover();
  btnStop.display();
  btnStop.hover();
  btnReset.display();
  btnReset.hover();

  fill(180);
  rect(width/2, height/2, width-100, 250);
  textSize(100);
  fill(60);
  text(timeLeft, width/2, 250);
  //alarm.play();
}

void mousePressed() {
  if (btnStart.over == true) {
    running = true;
    startTime = millis();
    alarmPlayed = false;
  }
  if (btnStop.over == true) {
    running = false;
    totalTime = millis();
  }
  if (btnReset.over == true) {
    running = false;
    timeLeft = 0;
    startTime = millis();
    alarmPlayed = false;
   
  }
}
