//Ciuccio Agostina, 91489/2, comision 2
//link: https://youtu.be/J3adYAVbkRo 

PImage ilusionopt;
//para ambos circulos
int tamCirculo;
int espacio;
//variables de posicion para los circulos blancos
int posX;
int posY;
//variables de posicion para los circulos negros
int posicX;
int posicY;
boolean movercirculitos = false;

void setup(){
  size(800, 400);
   ilusionopt = loadImage("ilusionopt.jpg");
   tamCirculo = 32; 
   espacio = 11;
   posX = 430;
   posY =28;
   posicX = 645;
   posicY = 27;  
  
}
 
void draw(){
   background (144, 144, 144);
   image (ilusionopt,0, 0, 400, 400); 
   circulosBlancosGrandes(430, 28, 32, 11);
   circulosNegrosGrandes(645, 27, 32, 11);
   circulitosNegros(430, 50, 34);
   circulitosBlancos(646, 50 , 34);

  if (movercirculitos){
    circulitosNegros (posX, posY, tamCirculo);
   circulitosBlancos (posX, posY, tamCirculo);
  }
}


void circulosBlancosGrandes(float posX, float posY, float tamCirculo, float espacio){
  for (int f = 0 ; f < 5; f++){
    for (int c = 0 ; c < 9; c++){
      float posicionx = posX + f * tamCirculo;
      float posiciony = posY + c * tamCirculo;
      noStroke();
      fill(229, 229, 229);
      pushMatrix(); 
      translate(posicionx + (f * espacio), posiciony + (c * espacio));
      ellipse(0, 0, tamCirculo, tamCirculo);
      popMatrix(); 
      }
    }
}

 void circulosNegrosGrandes (float posicX, float posicY, float tamCirculo, float espacio){
     for (int f = 0 ; f < 5; f++){
      for (int c = 0 ; c < 9; c++){
      float posicionx = posicX + f * tamCirculo;
      float posiciony = posicY + c * tamCirculo;
      fill(0);
      pushMatrix(); 
      translate(posicionx + (f * espacio), posiciony + (c * espacio));
      ellipse(0, 0, tamCirculo, tamCirculo);
      popMatrix();
        }
     } 
  }

  void circulitosNegros(int posX, int posY, int tamCirculo) {
  for (int f = 0; f < 6; f++) {
    for (int c = 0; c < 11; c++) {
      float posicionx = map(f, 0, 4, posX, posX + tamCirculo * 4);
      float posiciony = map(c, 0, 8, posY, posY + tamCirculo * 8);
      fill(0);
      ellipse(posicionx, posiciony, tamCirculo / 2, tamCirculo / 2);      
    }
  }
}

void circulitosBlancos(int posicX, int posicY, int tamCirculo) {
  for (int f = 0; f < 5; f++) {
    for (int c = 0; c < 11; c++) {
      float posicionx = map(f, 0, 4, posicX, posicX + tamCirculo * 4 );
      float posiciony = map(c, 0, 8, posicY, posicY + tamCirculo * 8);
      fill(229, 229, 229);
      ellipse(posicionx, posiciony, tamCirculo / 2, tamCirculo / 2);
    }
  }
}
void mouseMoved(){
if (mouseX > posicX && mouseX < posicX + tamCirculo * 5 && mouseY > posicY && mouseY < posicY + tamCirculo * 9){
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

void keyPressed(){
   if ( key == 'r' ){
    reiniciarVariables();
}
}
 void reiniciarVariables(){
  movercirculitos = false;
}
