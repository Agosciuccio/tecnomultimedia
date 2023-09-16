//comision 2, Agostina Ciuccio
//
//hacer una funcion mostrarPregunta
let pantallas = [];
let estado = 0;
let preguntaActual = 0;
let tiempoRestante = 15; // Tiempo total en segundos
let tiempoPregunta = 5; // Tiempo por pregunta en segundos
let juegoTerminado = false;


function preload() {

  for (let i = 1; i < 11; i++) {
    pantallas [i] = loadImage("assets/image" + i + ".png");
    print(pantallas);
    console.log();
  }
  imagenes.shift() //borra el primer item del array
}


function setup() {
  createCanvas(600, 600);
}

function draw() {
  switch (estado) {
  case 0:
    image(pantallas [1], 0, 0); //pantalla inicio, pantalla 1
    break;

  case 1:
    image (pantallas [2], 0, 0); //pantalla 2, pregunta 1
//Nombre de la funcion que se ejecuta una sola vez al principio

//a) draw()
//b) int()
//c) setup()

    break;

  case 2:
    image (pantallas [3], 0, 0); //pantalla 3, pregunta 2
    break;
//Que funcion se utiliza para cambiar el color de fondo en Processing?

//a) background()
//b) changeColor()
//c) backgroundColor()

  case 3:
    image (pantallas [4], 0, 0); //pantalla 4, pregunta 3
    break;
//¿Que comando se usa para dibujar una linea? a) drawLine() b) line() c) createLine()

  case 4:
    image (pantallas [5], 0, 0); //pantalla 5, pregunta 4
    break;
//¿Como se inicializa un ciclo for para repetir 5 veces?

//a) for (int i = 1; i <= 5; i++)
//b) for (int i = 0; i < 5; i++)
//c) for (int i = 5; i > 0; i--) 

  case 5:
    image (pantallas [6], 0, 0); //panttalla 6, pregunta 5
    break;

 //¿Como se declara una variable que almacena numeros enteros ?a) variable x; b) int x; c) float x;

  case 6:
    image (pantallas [7], 0, 0); //pantalla 7, pregunta 6
    break;
// ¿Cual es la funcion utilizada para cargar una imagen ? a) loadImage() b loadPicture() c) createImage()
  case 7:
    image (pantallas [8], 0, 0);//pantalla 8, ganaste
    break;

  case 8:
    image (pantallas [9], 0, 0); //pantalla 9, perdiste
    break;

  case 9 :
    image (pantallas [10], 0, 0); //pantalla 10, creditos
    break;

  case 10:
    image (pantallas [11], 0, 0); //pantalla 11, reglas
    break;
  }
}

function mousePressed() {
  if (estado === 1) {
    // verificar si el mouse hizo clic en el boton Empezar
    if (mouseX >= 330 && mouseX <= 250 && mouseY >= 430 && mouseY <= 480) {
      estado = 2;
    }
    // verificar si el mouse hizo clic en el boton Creditos
    if (mouseX >= 430 && mouseX <= 480 && mouseY >= 490 && mouseY <= 540) {
      estado = 10;
    }
    // verificar si el mouse hizo clic en el boton Reglas
    if (mouseX >= 230 && mouseX <= 380 && mouseY >= 550 && mouseY <= 600) {
      estado = 11;
    }
  } else if (estado === 2) {
    estado = 3; //tres botones
  } else if (estado === 3) {
    estado = 4;
  } else if (estado === 4) {
    estado = 5;
  } else if (estado === 5) {
    estado = 6;
  }

}
