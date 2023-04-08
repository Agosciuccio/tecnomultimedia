
//Comision 2
//Agostina Ciuccio, 91489/2

PImage gato;
void setup(){
  size(800, 400);
 gato = loadImage("gatito.jpg");
  
}
void draw(){
  background(57, 37, 22);
 image(gato,0, 0);
  
 //barra sobre donde se posiciona el gato
 noStroke();
 fill(28,17,8);
 rect(400, 310, 399, 60);
 
 //cuerpo
 fill(64,57,48);
 rect (400,190,110,120);
 
//manchas
 fill(0);
 ellipse(420,220, 10, 30);
 ellipse(450,220, 10, 30);
 ellipse(420,240, 10, 30);
 ellipse(450,240, 10, 30);
 ellipse(420,260, 10, 30);
 ellipse(450,260, 10,30);
 ellipse(420,280,10, 30);
 ellipse(450,280, 10,30);
 
 stroke(175,134, 83);
 fill(175,134, 83 );
 ellipse(516,140, 90,170); //oreja izquierda
 noStroke();
 fill(216, 189, 181);
 ellipse(516,140, 75,150);
 fill(175,134, 83 );
 ellipse(669,140, 90,170); //oreja derecha
 fill(216, 189, 181);
 ellipse(669,140, 75, 150);
 noStroke();
 fill(103,91,66);
 ellipse(590, 230, 255, 220);  //cara del gato
 
//patita
 fill(255);
 circle(690, 310, 50);
 stroke(2); 
 circle(669,319,50);
 circle(651,325,50);
 
 //rasgos de la cara
 fill(216,216, 216);
 circle(533,210, 60); //ojo izquierdo
 fill(202, 247, 107); 
 circle(530, 210, 57); //ojo izquierdo 2da parte
 fill(0);
 noStroke();
 ellipse (530, 210, 15, 30); //pupila
 stroke(1);
 fill(216,216, 216);
 circle(650, 210, 60); //ojo derecho
 fill(202, 247, 107);
 circle(652,210,55); //ojo derecho 2da parte
 fill(0);
 noStroke();
 ellipse(652, 210, 15, 30); //pupila
fill(255);
ellipse(592,240,45, 130);
circle (592, 290, 83); //barbilla

//Nariz
noStroke();
fill(193, 37,42);
triangle(580, 290, 605,290,593,310);
fill(250, 225, 225);
ellipse(593,270,46,46);

//bigotes derechos
stroke(216, 216, 216);
line(620,290,700,275);
line(620,285,700,270);

//bigotes izquierdos
stroke(216,216,216);
line(565,290,500,299);
line(565,285,500,289);





 
 

 
 
}
