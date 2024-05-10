private class Nave extends GameObject implements IDisplayable, IMoveable, IControler{
  
  public Nave(){
    posicion = new PVector(width/2,500);
    imagen = loadImage("nave.png");
  }
  
  public void display(){
    image(imagen,posicion.x,posicion.y);
  }
  
  public void mover(){
  }
  
  public void readCommand(){
  }
  
}
