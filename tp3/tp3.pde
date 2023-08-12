//Agostina Ciuccio, 91489/2, Comision 2
//Link: https://youtu.be/MzJQNy1Trf4 

int c = 12;
int estado; //variable que maneja el programa
PImage[] imagen =  new PImage[c];

void setup() {
  size( 600, 600);
  for ( int i = 0; i < c; i++ ) {
    imagen[i] = loadImage( "data/imagen" + i + ".png" );
  }
}

void draw() {
  background(0);
  switch (estado) {
  case 0:
    image( imagen[0], 0, 0 ); //pantalla inicio, pantalla 1
    textSize(35);
    //para boton iniciar
    botonDetalles();
    rect (230, 430, 150, 50);
    fill (255);
    text( "Iniciar", 260, 468);
    
    //para boton creditos
    botonDetalles();
    rect (230, 490, 150, 50);
    fill (0);
    text( "Creditos", 248, 528);
    break;

  case 1:
    image (imagen [1], 0, 0); //pantalla 2
    estiloTexto();
    text( "La princesa juega con su bola de oro alrededor del estanque, \n                    pero se le va de las manos y se hunde.", 30, 150);
    break;

  case 2:
    image (imagen [2], 0, 0); //pantalla 3
    estiloTexto( );
    text( "El sapo la ve y le ofrece su ayuda, pero a cambio de 3 deseos  \n  ¿Cual decide la princesa? A: Acepta o B: Busca por su cuenta.", 30, 100);
    //boton a
    botones(100, 200, 50, 50);
    fill(0);
    textSize(25);
    text ("A", 120, 235);

    //boton b
    botones(250, 200, 50, 50);
    fill(0);
    textSize(25);
    text ("B", 268, 235);
    break;

  case 3:
    image (imagen [3], 0, 0); //pantalla 4
    estiloTexto();
    text("La princesa busca por su cuenta, cuando de repente se cae.  \n No sabe nadar ni flotar, lo cual se queda sin aire y muere.", 30, 100);
    break;

  case 4:
    image (imagen [4], 0, 0); //pantalla 5
    estiloTexto();
    text("La princesa y el sapo continuan su camino hacia el palacio y \n este le insiste en que cumpla los deseos y la princesa asciende.", 15, 500);
    break;

  case 5:
    image (imagen [5], 0, 0); // pantalla 6
    fill(255);
    textSize(18);
    text("Despues de pasar el dia juntos,la princesa le permite al sapo dormir con ella \n en su habitacion. En ese momento, la princesa se enfrenta una decision: \n A: Besar al sapo o B: No lo deja", 15, 500);
    //boton a
    botones(120, 400, 50, 50);
    fill(0);
    textSize(25);
    text ("A", 138, 435);

    //boton b
    botones (300, 400, 50, 50);
    fill (0);
    textSize(25);
    text( "B", 320, 435);
    break;

  case 6:
    image (imagen [6], 0, 0); //pantalla 7
    estiloTexto();
    text("Al besarse,el sapo se transforma en un principe, este le agradece \n por cumplir, al momento el le pide matrimonio y ella dice si.", 10, 530);
    break;

  case 7:
    image (imagen [7], 0, 0); //pantalla 8
    estiloTexto();
    text("Ambos se enamoran y viven felices para siempre", 30, 200);
    break;

  case 8:
    image (imagen [8], 0, 0); //pantalla 9
    estiloTexto();
    text("La princesa aleja al sapo y lo empieza a menospreciar e insultar", 30, 200);
    break;

  case 9:
    image (imagen [9], 0, 0); //pantalla 10
    estiloTexto();
    text("El sapo huye disgustado y vuelve a su sitio, \n mientras que la princesa se queda sola al pasar de los dias", 30, 400);
    break;

  case 10:
    image (imagen [10], 0, 0); //pantalla 11
    estiloTexto();
    text("La princesa vive una vida triste y amargada en el palacio, \n consumida por la pena y el arrepentimiento. \n Se aisla de todos y no se supo mas de ella.", 30, 200);
    break;

  case 11:
    image (imagen [11], 0, 0); //pantalla 12 creditos
    break;
  }
}

void mousePressed() {
  if (estado == 0 && dist(mouseX, mouseY, 230, 430) <= 100) {
    estado = 1;
  } else if (estado == 1) {
    estado = 2;
  } else if (estado == 2) {
    if (mouseX >= 100 && mouseX <= 150 && mouseY >= 200 && mouseY <= 250) { //boton a
      estado = 4;
    } else if (mouseX >= 250 && mouseX <= 300 && mouseY >= 200 && mouseY <= 250) {  //boton b
      estado = 3;
    }
  } else if ( estado == 3) {
    estado = 0;
  } else if (estado == 4) {
    estado = 5;
  } else if (estado == 5) {
    estado = 6;
  } else if (estado == 6) {
    if ( mouseX >= 120 && mouseX <= 170 && mouseY >= 400 && mouseY <= 450) { //boton a
      estado = 7;
    } else if ( mouseX >= 300 && mouseX <= 350 && mouseY >= 400 && mouseY <= 450) { // boton b
      estado = 9;
    }
  } else if (estado == 7) {
    estado = 8;
  } else if (estado == 9) {
    estado = 10;
  }
  if (estado == 0 && dist(mouseX, mouseY, 230, 490) <= 100) {
    estado = 11;
  } else if (estado == 11) {
    estado = 0;
  }
}
void estiloTexto() {
  fill(209, 6, 138);
  textSize(22);
}

void botonDetalles() {
  stroke(173, 255, 103);
  fill(255, 116, 176);
}

void botones( int x, int y, int alto, int ancho) {
  fill (255);
  rect (x, y, alto, ancho);
}
boolean interiorRect(int x, int y, int posX, int posY, int ancho, int alto) {
  if (x > posX && x < posX + ancho && y > posY && y < posY + alto) {
    return true;
  } else {
    return false;
  }
}

void mouseMoved() {
  if (interiorRect(mouseX, mouseY, 230, 430, 150, 50) || interiorRect(mouseX, mouseY, 230, 490, 150, 50)) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
