PImage miFoto;
 
void setup(){
 size(800,400);   
 background(113,17,43);
 
 
 miFoto =loadImage("/data/miFoto.jpg");
 image(miFoto,0,0,400,400);
}
 
 void draw(){ 
 







translate(200,0);
//Cuello
fill(#FBC1AE); // Color
noStroke();
// 
triangle(360, 374, 440, 374, 400, 440); //trangulo


//Cabeza
noStroke(); // Sin bordes
fill(#FCD6C9);
ellipse(410, 180, 250, 300);
ellipse(390, 180, 250, 300);
ellipse(390, 260, 200, 200);
ellipse(410, 260, 200, 200);
ellipse(400, 280, 200, 200);

//SOMBRA
// Pómulos angulados (triángulos de sombra)
fill(#FBC1AE);
triangle(300, 230, 320, 250, 360, 240); // Pómulo izquierdo
triangle(500, 230, 480, 250, 440, 240); // Pómulo derecho




// pelona
noStroke();
fill(#B7410E);// Color
ellipse(400, 80, 200, 110); //Tapando pelona
ellipse(290, 180, 50, 150); //Tapando pelona
ellipse(510, 180, 50, 150); //Tapando pelona

// Rodete
noStroke();
fill(#B7410E); //Color
ellipse(400, 0, 200, 110); //Rodete 




// Pómulos con bezier
stroke(#F7AC93);
strokeWeight(4);
noFill();

// Pómulo izquierdo
bezier(270, 200, 260, 240, 300, 300, 350, 310); //(x1, y1, x2, y2, x3, y3, x4, y4)

// Pómulo derecho
bezier(530, 200, 540, 240, 500, 300, 450, 310);


// Línea mandíbula izquierda
strokeWeight(2.5);
line(350, 310, 370, 374);

// Línea mandíbula derecha
line(450, 310, 430, 374);





fill(#D86A65); // Color Labios
noStroke();    // Sin bordes

// Labio superior
ellipse(400, 280, 35, 30); 

// Labio inferior
ellipse(400, 300, 50, 35);





// OJOS
fill(0); // Color Negro
ellipse(355, 200, 25, 15); // Ojo izquierdo
ellipse(445, 200, 25, 15); // Ojo derecho




// CEJAS (rectángulos)
fill(#703B2B); // Color Marron

//Ceja izquierda
pushMatrix();
translate(345, 185);
rotate(radians(-15));
rect(0, 0, 40, 8, 5); // Cejas con esquinas redondeadas
popMatrix();

//Ceja Derecha
pushMatrix();
translate(425, 185);
rotate(radians(15));
rect(0, 0, 40, 8, 5);
popMatrix();

//OREJA
fill(#FCD6C9); // Mismo color de piel
ellipse(265, 230, 50, 70); // Oreja izquierda
ellipse(535, 230, 50, 70); // Oreja derecha





// PELO LISO PELIRROJO
noStroke();
fill(#B7410E); // Rojo pelirrojo oscuro

// Cabello central superior (parte frontal que cae)
beginShape();
vertex(300, 70); //punto inicio Izquierd
bezierVertex(350, 30, 400, 10, 500, 70); // curva hacia la derecha
vertex(500, 180); //Lado derecho 
bezierVertex(400, 140, 350, 150, 300, 180);
endShape();



// Cabello lateral izquierdo
beginShape();
vertex(300, 70);// punto inicio
bezierVertex(330, 190, 290, 310, 280, 340);
vertex(280, 340);
bezierVertex(270, 260, 260, 180, 280, 100);
endShape(CLOSE);


beginShape();
vertex(500, 70); // reflejo de 300, 70
bezierVertex(470, 190, 510, 310, 520, 340); // reflejo (X-800=)
vertex(520, 340); // reflejo de 280, 340
bezierVertex(530, 260, 540, 180, 520, 100); //reflejo final
endShape(CLOSE);


fill(#E07E2D);
stroke(#713B0E);
strokeWeight(1);
ellipse(260, 250, 10, 10);
ellipse(540, 250, 10, 10);
 }
