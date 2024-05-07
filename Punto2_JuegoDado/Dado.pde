private class Dado extends GameObject{
  
  private int valor;
  private int tamDado;
  
  public Dado(){
    valor =(int)d;
    tamDado= 50;
    posicion = new PVector(width/2-tamDado/2,height/2-tamDado/2);
    
    
  }
  
  public void display(){
    fill(#79FFE3);
    square(posicion.x,posicion.y,tamDado);
  }
}
