
import org.openkinect.freenect.*;
import org.openkinect.processing.*;
import cc.arduino.*;
import processing.serial.*;

// The kinect stuff is happening in another class
KinectTracker tracker;
Kinect kinect;
Arduino arduino;
int i;


void setup() {
  size(640, 520);
  kinect = new Kinect(this);
  tracker = new KinectTracker();
  //arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  //arduino.pinMode(10, Arduino.SERVO);
  //arduino.pinMode(11, Arduino.SERVO);
  
  //println(Arduino.list());
  
}

void draw() {
  background(255);

  // Run the tracking analysis
  tracker.track();
  // Show the image
  tracker.display();

  // Let's draw the raw location
  PVector v1 = tracker.getPos();
  fill(50, 100, 250, 200);
  noStroke();
  ellipse(v1.x, v1.y, 20, 20);
  
  i = int(v1.y * 1.14);

  //arduino.servoWrite(10,i);
 // arduino.servoWrite(11,(i-180)*(-1));
  
  
}