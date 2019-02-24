BufferedReader reader;
String string;

int gen = 0;
float x = 1400, y = 650;
double pi = 3.141592653589793238462643383279502;

float l = 15;

String file = "./nums/root_5.txt";

void setup() {
  fullScreen();
  background(200);
  reader = createReader(file);
  try {
    string = reader.readLine();
  } 
  catch (IOException e) {
    string = null;
  }
  println("Length of string: " + string.length());
  for (int i = 0; i < string.length(); i++) {
    nextLine(Character.getNumericValue(string.charAt(i)));
  }
  println("Final Coordinates:\nx: " + x + "\ty: " + y);
}

void colorSelector(int i) {
  if (i == 0) stroke(0, 0, 0);
  else if (i==1) stroke(255, 255, 255);
  else if (i==2) stroke(255, 0, 0);
  else if (i==3) stroke(#FF9900);
  else if (i==4) stroke(#F6FF00);
  else if (i==5) stroke(#02D60A);
  else if (i==6) stroke(0, 255, 255);
  else if (i==7) stroke(0, 0, 255);
  else if (i==8) stroke(#9503FF);
  else if (i==9) stroke(#FF03FB);
}

void nextLine(int value) {
  float tx = x, ty = y;
  x += l*cos((float)value*(float)pi/5.0);
  y -= l*sin((float)value*(float)pi/5.0);
  colorSelector(value);
  line(tx, ty, x, y);
}
