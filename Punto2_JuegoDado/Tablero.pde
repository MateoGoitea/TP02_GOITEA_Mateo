private class Tablero extends GameObject{
  
  public Tablero(){
    posicion = new PVector(100,100);
  }
  
  public void display(){
    fill(#281E86);
    rect(posicion.x,posicion.y,600,200);
    
  }
  
  public void mostrarValor(){
    fill(#79FFE3);
    text((int)d,posicion.x+500,posicion.y+10);

    
    }

}
