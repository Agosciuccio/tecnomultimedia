//Ciuccio Agostina, 91489/2
//Comision 2

PImage foto1, foto2, foto3, foto4;
String texto1 = "Honey";
String texto2 = " Nacio el dia 27/1/2020 y tiene 3 años";
String texto3 = "Es una gata mimosa cuando hace frio. \n Le gusta mucho comer y que la peinen.";
int estado = 1; //Seguimiento de pantallas
int tiempoinicio = millis(); // seguimiento del tiempo de inicio
boolean botonreinicio = false;
PFont fuente; 
int texto1PosY = -100;
int texto2PosX = -400;
int opacity = 0;


void setup() {
  size(640, 480);

  foto1 = loadImage("foto1.jpg");
  foto2 = loadImage("foto2.jpg");
  foto3 = loadImage("foto3.jpg");
  foto4 = loadImage("foto4.jpg");
  fuente = loadFont("Candara.vlw");
}

void draw() {
  textFont(fuente);

  if (estado == 1) {
    image(foto1, 0, 0, width, height);
    fill(255, 205, 0);
    textSize(60);
    textAlign(CENTER);
    text(texto1, 99, texto1PosY);

    texto1PosY += 2;
    if (texto1PosY >= 70) {
      texto1PosY = 70;
    }
  } else if (estado == 2) {
    image(foto2, 0, 0, width, height);
    fill(255, 218, 70);
    textSize(30);
    textAlign(CENTER);
    text(texto2, texto2PosX, 390);

    texto2PosX += 4;
    if (texto2PosX >= 310) {
      texto2PosX = 310;
    }
  } else if (estado == 3) {
    image(foto3, 0, 0, width, height);
    if (opacity < 255) {
      opacity += 4;
    } else {
      opacity = 255;
    }
    fill(255, 207, 10, opacity);
    textSize(30);
    textAlign(CENTER);
    text(texto3, 310, 390);
  } else if (estado == 4) {
    image(foto4, 0, 0, width, height);
    fill(255);
    //boton de reinicio
    fill(255, 0, 0);
    rect(10, 10, 50, 50);

    if (botonreinicio && mouseX >= 20 && mouseX <= 60 && mouseY >= 30 && mouseY <= 60) {
      estado = 1;
      tiempoinicio = millis();
      botonreinicio = false;
    }
  }

  // Cambiar a la pantalla sig después de 9 segundos
  if (millis() - tiempoinicio >= 9000) {
    tiempoinicio = millis();
    estado++;
  }
}

void mousePressed() {
  if (estado == 4) {
    if (mouseX >= 10 && mouseX <= 60 && mouseY >= 10 && mouseY <= 60) {
      botonreinicio = true;
    }
  }
  // Reiniciar la variable del texto1
  texto1PosY = 0; 
}
