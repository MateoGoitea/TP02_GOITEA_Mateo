private Tablero tablero;
private Dado dado;
float d;

public void setup(){
  size(800,400);
  background(0);
  
  tablero = new Tablero();
  dado = new Dado();
}

public void draw(){
  tablero.display();
  tablero.mostrarValor();
  dado.display();
  
  println(d);
  
}

public void mouseReleased(){
  d=random((int)1, 7);
}
