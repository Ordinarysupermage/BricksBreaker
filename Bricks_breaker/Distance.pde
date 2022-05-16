double distance(int x1, int y1, float x2, float y2 ) {

  float a = x1- x2;
  float b = y1 - y2;
  double d = sqrt(a*a + b*b);
  return d;
}

//double distance2( int x3, int y3, float x4, float y4) {

//  float a2 = x3 - x4;
//  float b2 = y3 - y4;

//  double d2 = sqrt(a2*a2 + b2*b2) ;
//  return d2;
//}
