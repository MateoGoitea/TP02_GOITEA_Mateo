private class Fondo extends GameObject implements IDisplayable{
    
  public Fondo(){
    posicion = new PVector(0,0);
    imagen = loadImage("fondo.jpg");
  }
  
  public void display(){
    image(imagen,posicion.x,posicion.y);
  }
  
}
