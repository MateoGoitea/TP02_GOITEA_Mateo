private Tablero tablero;
private Dado dado;   

public void setup(){
  size(800,400);
  background(0);

  
  tablero = new Tablero();
  dado = new Dado();
}

public void draw(){
  tablero.display();
  tablero.mostrarValor();  
}

public void mouseReleased(){
  dado.generarValor();
}

public void keyReleased(){
  if (keyCode==ENTER || dado.getCont()>11){
    dado.mostrarResultados();
  }
}
