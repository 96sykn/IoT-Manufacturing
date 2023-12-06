import com.leapmotion.leap.*;
Controller leap = new Controller();

void setup() { size(800, 600);}

void draw() {
  background(0);
  Frame frame = leap.frame();
  HandList hands = frame.hands();
  for(int i = 0; i < hands.count(); i++) {
    Hand hand = hands.get(i);
    Vector palmPos = hand.palmPosition();
    textSize(40);
    text(hand.id() + palmPos.toString(), 0, 40 * (i + 1));
  }
}
