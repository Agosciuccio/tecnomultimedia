//Ciuccio Agostina, 91489/2, comision 2
//link: https://youtu.be/TOJXV9IUtkM 

PImage ilusionopt;
//para ambos circulos
int tamCirculo;
int espacio;
//variables de posicion para los circulos grandes
int posX;
int posY;
boolean movercirculitos = false;

void setup() {
  size(800, 400);
  ilusionopt = loadImage("ilusionopt.jpg");
  tamCirculo = 30;
  espacio = 13;
  posX = 430;
  posY =28;
}

void draw() {
  background (144, 144, 144);
  image (ilusionopt, 0, 0, 400, 400);
  circulosGrandes(posX, posY, tamCirculo, espacio, color(229)); // Circulos blancos grandes
  circulosGrandes(posX + 215, posY, tamCirculo, espacio, color(0));   // Circulos negros grandes

  if (movercirculitos) {
    dibujarCirculitos(posX, posY + 22, tamCirculo, color(0));     // Circulos negros pequeños
    dibujarCirculitos(posX + 215, posY + 22, tamCirculo, color(229));   // Circulos blancos pequeños
  }
}

void circulosGrandes(float posX, float posY, float tamCirculo, float espacio, int fillColor) {
  for (int f = 0; f < 5; f++) {
    for (int c = 0; c < 9; c++) {
      float posicionx = posX + f * tamCirculo;
      float posiciony = posY + c * tamCirculo;
      noStroke();
      fill(fillColor);
      pushMatrix();
      translate(posicionx + (f * espacio), posiciony + (c * espacio));
      ellipse(0, 0, tamCirculo, tamCirculo);
      popMatrix();
    }
  }
}

void dibujarCirculitos(int posX, int posY, int tamCirculo, int fillColor) {
  for (int f = 0; f < 7; f++) {
    for (int c = 0; c < 12; c++) {
      float posicionx = map(f, 0, 4, posX, posX + tamCirculo * 4);
      float posiciony = map(c, 0, 8, posY, posY + tamCirculo * 8);
      noStroke();
      fill(fillColor);
      ellipse(posicionx, posiciony, tamCirculo / 2, tamCirculo  / 2);
    }
  }
}

void mouseMoved() {
  if (interiorcirculitos(mouseX, mouseY, posX, posY, tamCirculo)) {
    movercirculitos = true;
  } else {
    movercirculitos = false;
  }
}

boolean interiorcirculitos(float x, float y, float posX, float posY, float tamCirculo) {
  if (x > posX && x < posX + tamCirculo * 5 && y > posY && y < posY + tamCirculo * 9) {
    return true;
  } else {
    return false;
  }
}

void keyPressed() {
  if ( key == 'r' ) {
    reiniciarVariables();
  }
}
void reiniciarVariables() {
  movercirculitos = false;
}
