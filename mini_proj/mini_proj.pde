//Logan Dillworth mini proj password
String password = "674167";
String input = "";
int attempts = 1;
boolean accessGranted = false;
boolean accessDenied = false;

void setup() {
  size(600, 400);
  textAlign(CENTER, CENTER);
  textSize(45);
}

void draw() {
  if (accessGranted) {
    background(0, 150, 0);
  } else if (accessDenied) {
    background(255, 0, 0);
  } else {
    background(#B13ECB);
  }

  fill(255);
  if (!accessGranted && attempts > 0) {
    text("Press keys to enter password", width/2, 100);
    text("Password: " + input, width/2, 160);
    text("Attempts left: " + attempts, width/2, 220);
  }

  if (accessGranted) {
    textSize(70);
    text("ACCESS GRANTED", width/2, height/2);
  } else if (accessDenied) {
    textSize(70);
    text("ACCESS DENIED", width/2, height/2);
  }
}

void keyPressed() {
  if (accessGranted || attempts <= 0) return;

  
  if (key == ENTER || key == RETURN) {
    if (input.equals(password)) {
      accessGranted = true;
    } else {
      attempts--;
      input = "";
      if (attempts <= 0) {
        accessDenied = true;
      }
    }
  }
  
  else if (key == BACKSPACE && input.length() > 0) {
    input = input.substring(0, input.length() - 1);
  }
  else if (key != CODED) {
    input += key;
  }
}
