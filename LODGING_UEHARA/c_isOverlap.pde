/*
x1 racket x
 y1 racket y
 w1 racket width
 h1 racket height
 x2 ball x
 y2 ball y
 w2 ball width
 h2 ball height
 */
boolean isOverlap(float x1, float y1, float w1, float h1, float x2, float y2, float w2, float h2) {
  return (x1 < x2+w2 && x2 < x1+w1 && y1 < y2+h2 && y2 < y1+h1);
}
