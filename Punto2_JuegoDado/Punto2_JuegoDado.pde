private Tablero tablero;
private Dado[] dado;
float d;

public void setup(){
  size(800,400);
  background(0);
  
  tablero = new Tablero();
  dado = new Dado[8];
}

public void draw(){
  
}

public void mouseReleased(){
  d=random((int)1, 7);
}
