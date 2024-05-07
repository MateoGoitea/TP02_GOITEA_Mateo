private class Tablero extends GameObject{
  
  private color colorTablero;
  private int tableWidth;
  private int tableHeight;
  private color colorTexto;
  
  public Tablero(){
    posicion = new PVector(100,100);
    colorTexto=color(#A0FFED);
    colorTablero=color(#281E86);
    tableWidth=600;
    tableHeight=200;
  }
  
  public void display(){
    fill(colorTablero);
    rect(posicion.x,posicion.y,tableWidth,tableHeight);
    
    
    
    dado.display();
  }
  
  public void mostrarValor(){
    switch((int)dado.getValor()){
      case 1:
        fill(colorTexto);
        text("Uno",posicion.x+500,posicion.y+10);
        break;
      case 2:
        fill(colorTexto);
        text("Dos",posicion.x+500,posicion.y+10);
        break;
      case 3:
        fill(colorTexto);
        text("Tres",posicion.x+500,posicion.y+10);
        break;
      case 4:
        fill(colorTexto);
        text("Cuatro",posicion.x+500,posicion.y+10);
        break;
      case 5:
        fill(colorTexto);
        text("Cinco",posicion.x+500,posicion.y+10);
        break;
      case 6:
        fill(colorTexto);
        text("Seis",posicion.x+500,posicion.y+10);
        break;
    }      
  }
}
