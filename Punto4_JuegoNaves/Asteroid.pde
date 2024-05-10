private class Asteroid extends GameObject implements IDisplayable, IMoveable{
  
  private int vel;
  
  public Asteroid(){
    posicion = new PVector(0,width-10);
    imagen = loadImage("asteroid.png");
    vel = 5;
  }

  public void display(){
    image(imagen,posicion.x,posicion.y);
    
    this.mover();
  }
  
  public void mover(){
    if(posicion.y>height){
      posicion.x=random(0,width-10);
      posicion.y=0;
    }
    posicion.y+=vel;
  }
  
}
